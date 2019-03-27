class MyDevise::RegistrationsController < Devise::RegistrationsController

  def create

    if !params.has_key?(:group_id)

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
