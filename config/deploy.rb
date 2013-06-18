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
		run "ln -sfn #{shared_path}/logos #{release}/lib/assets/Logos"
	end
end
after "deploy:symlink_database_yml", "deploy:symlink_logos"

namespace :images do
  task :symlink, :except => { :no_release => true } do
    run "rm -rf #{release_path}/public/spree"
    run "ln -nfs #{shared_path}/spree #{release_path}/public/spree"
  end
end
after "bundle:install", "images:symlink"


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
# after "deploy:restart", "deploy:cleanup"

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