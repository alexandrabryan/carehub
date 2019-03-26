class HomeController < ApplicationController
  layout 'application'

  def index
    @events = Event.all

    #Get only the 10 most recent updates from DB
    #@posts = Post.all
    @posts = Post.all.order('created_at DESC').take(10)

    @items = Item.all
    @item = Item.new

  end

  def about
  end


end
