# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.westlakepro.com/"

SitemapGenerator::Sitemap.create do

  add '/home', :changefreq => 'daily', :priority => 0.9
  add '/about'
  add '/contect'
  add '/careers'
  add '/privacy_policy'
  add '/pricing_policy'
  add '/avid'
  add '/avid_tabs'
  add '/line_card', :changefreq => 'weekly'
  add '/who_we_are'
  add '/what_we_do'
  add '/events'
  add '/gallery'
  Announcement.find(:all).each do |a|
    add announcement_path(a)
  end

  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/articles'
  #
  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
  #
  # Add all articles:
  #
  #   Article.find_each do |article|
  #     add article_path(article), :lastmod => article.updated_at
  #   end
end
