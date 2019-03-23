class HomeController < ApplicationController
  layout 'application'

  def index
    @events = Event.all
    @posts = Post.all
  end

end
