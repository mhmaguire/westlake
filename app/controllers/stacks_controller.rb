class StacksController < ApplicationController

  def index
    @stacks = Stack.all
  end

  def edit
    @stack = Stack.find(params[:id])
  end

  def update
    @stack = Stack.find(params[:id])
    if @stack.update_attributes(params[:stack])
      redirect_to :back
    else
      render :edit, locals: [stack: @stack.errors]
    end
  end
end
