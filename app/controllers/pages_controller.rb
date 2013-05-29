class PagesController < ApplicationController

  def self.define_top_action(*names)
    names.each do |name|
      define_method name do
        @stack = Stack.find_by_title(name)
        render 'page'
      end
    end
  end

  def home
  end
  define_top_action :line_card, :about, :what_we_do, :contact, :careers
end
