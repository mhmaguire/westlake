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

  def email_contact  #TODO implement email pseudo model or full model to handle validations
    email = params[:email] if params[:email].present?
    if  email.nil?
      #handle nil case
      redirect_to :back
    else
      ContactMailer.contact_email(email).deliver
      redirect_to :back
    end

  end
  define_top_action :line_card, :about, :what_we_do, :contact, :careers
end
