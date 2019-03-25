class HomeController < ApplicationController
  layout 'application'

  def index
    @events = Event.all
    @posts = Post.all
    @items = Item.all
      @item = Item.new
  end


end
