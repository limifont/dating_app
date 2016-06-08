class StaticPagesController < ApplicationController
  before_action :authorize

  def home
  end

  def account
    @person = current_user
  end

  
end
