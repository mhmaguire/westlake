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
  define_top_action :line_card, :about, :what_we_do, :careers, :events
end
