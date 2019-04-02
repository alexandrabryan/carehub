class MyDevise::RegistrationsController < Devise::RegistrationsController

  def create

    #puts "IN USER CREATE METHOD - NEXT LINE IS PARAM"
    #puts params[:user][:group_id]

    #if !params.has_key?(:user)(:group_id)
    #if !params.dig(:user, :group_id)
    if !params[:user][:group_id].presence

      group = Group.create!
      #@group.create
      #@group.save
      params[:user][:group_id] = group.id
    end

    # See what the parameter are in the console
    #puts params[:user]

    # call the devise controller's create method
    super

  end


end
