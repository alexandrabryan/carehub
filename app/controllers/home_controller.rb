class HomeController < ApplicationController
  layout 'application'

  def index

    # only load events, posts and items if user logged in
    if user_signed_in?
      
      # Get all events for the current group
      #@events = Event.all
      @events = Event.where(group_id: current_user.group_id)

      # Testing the count method
      #puts "There are #{@events.count} events"

      #Get only the 10 most recent updates for the current group
      #@posts = Post.all
      #@posts = Post.all.order('created_at DESC').take(10)
      @posts = Post.where(group_id: current_user.group_id).order('created_at DESC').take(10)

      # Get all items for the current group
      #@items = Item.all
      @items = Item.where(group_id: current_user.group_id)
      @item = Item.new
    end

  end

  def about
  end


end
