class PagesController < ApplicationController
  def home
  	@contact = Contact.new
  end

  def about
  	@contact = Contact.new
  end

  def programs

  end

end
