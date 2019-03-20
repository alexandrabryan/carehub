class HomeController < ApplicationController
  layout 'application'

  def index
    @events = Event.all
  end

end
