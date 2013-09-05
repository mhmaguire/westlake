require "bundler/capistrano"
load "deploy/assets"

set :application, "WestlakePro"
set :repository, "git@github.com:mhmaguire/westlake.git"
set :local_repository,  "git@github-as-matt:mhmaguire/westlake.git"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

server = "198.61.201.4"
role :web, server                          # Your HTTP server, Apache/etc
role :app, server                          # This may be the same as your `Web` server
role :db,  server, :primary => true # This is where Rails migrations will run

set :user, "westlake"
set :deploy_to, "/home/westlake/#{application}"

set :use_sudo, false 

set :ssh_options, { :forward_agent => true }

default_run_options[:shell]= '/bin/bash --login'

default_environment["RAILS_ENV"] = 'production'

namespace :deploy do 
	task :symlink_database_yml do
	  run "rm #{release_path}/config/database.yml"
	  run "ln -sfn #{shared_path}/config/database.yml #{release_path}/config/database.yml"
	end
end
after "bundle:install", "deploy:symlink_database_yml"

namespace :deploy do 
	task :symlink_logos do 
		run "rm -rf #{release_path}/lib/assets/Logos"
		run "ln -sfn #{shared_path}/Logos #{release_path}/lib/assets/Logos"
	end
end
after "deploy:symlink_database_yml", "deploy:symlink_logos"


#namespace :unicorn do
#  desc "Zero-downtime restart of Unicorn"
#  task :restart, except: { no_release: true } do
#    run "kill -s USR2 `cat /tmp/unicorn.WestlakePro.pid`"
#  end
#
#  desc "Start unicorn"
#  task :start, except: { no_release: true } do
#    run "cd #{current_path} ; bundle exec unicorn_rails -c config/unicorn.rb -D"
#  end
#
#  desc "Stop unicorn"
#  task :stop, except: { no_release: true } do
#    run "kill -s QUIT `cat /tmp/unicorn.WestlakePro.pid`"
#  end
#end

#after "deploy:restart", "unicorn:restart"
# if you want to clean up old releases on each deploy uncomment this:


# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end

 #symlink store into public
 namespace :deploy do 
 	task :symlink_store do 
 		run "ln -s /home/westlake/store/public /home/westlake/public_html/public/store"
 	end
 end
 after "deploy:restart", "deploy:symlink_store"

#symlink images into public
namespace :deploy do 
 	task :symlink_images do 
 		run "ln -s #{shared_path}/images #{release_path}/public"
 	end
 end
 after "deploy:restart", "deploy:symlink_images"

 
 namespace :deploy do 
 	task :symlink_troy do 
 		run "ln -s #{shared_path}/troymorrismemorial.html #{release_path}/public/troymorrismemorial.html"
 	end
 end
 after "deploy:restart", "deploy:symlink_troy"

 set :keep_releases, 5 
 after "deploy:restart", "deploy:cleanup"


task :refresh_sitemaps do
	run "cd #{latest_release} && RAILS_ENV=#{rails_env} rake sitemap:refresh"
end
after "deploy", "refresh_sitemaps"

task :symlink_static do 
	run "ln -s #{shared_path}/static #{release_path}/public"
end
