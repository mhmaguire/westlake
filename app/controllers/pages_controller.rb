class PagesController < ApplicationController

  def self.define_top_action(*names)
    names.each do |name|
      define_method name do
       @content = Content.last
      end
    end
  end

  def home
    @content = Content.last
  end

  def privacy 
  end
  def sitemap
  end
  def pricing
  end
  def avid 
  end
  define_top_action :line_card, :about, :what_we_do, :careers, :events
end
