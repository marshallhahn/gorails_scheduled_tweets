class MainController < ApplicationController
  def index
    flash[:notice] = 'Logged in'
    flash[:alert] = 'Invalid email or password'
  end
end
