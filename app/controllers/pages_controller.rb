class PagesController < ApplicationController

  def self.define_top_action(*names)
    names.each do |name|
      define_method name do
       @content = Content.instance
      end
    end
  end

  def home
    @content = Content.instance
  end

  def privacy 
  end
  def sitemap
  end
  def pricing
  end
  def avid 
  end
  def galleries
  end
  define_top_action :about, :what_we_do, :careers
end
