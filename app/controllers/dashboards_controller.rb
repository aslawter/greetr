class DashboardsController < ApplicationController
  def show
    @greeting = Greeting.new
    @users = User.all
    @greetings = current_user.received_greetings

  end
 end
