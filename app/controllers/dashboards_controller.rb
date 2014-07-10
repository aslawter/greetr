class DashboardsController < ApplicationController
  def show
    @greeting = Greeting.all
  end
end
