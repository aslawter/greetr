class DashboardsController < ApplicationController
  def show
    @greeting = Greeting.new
    @users = User.all
  end
 end
