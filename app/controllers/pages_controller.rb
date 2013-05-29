class PagesController < ApplicationController
  before_filter :get_stack
  def line_card

  end

  def about


  end

  def what_we_do

  end

  def contact

  end

  def careers

  end

  private
    def get_stack
      @stack = Stack.find_by_title(action_name)
    end
end
