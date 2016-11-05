class UsersController < ApplicationController

  def user_params
    params.require(:users).permit(:user_name, :password)
  end

  def new
    @user = User.new
  end

  # receive Form from user to create new User in DB
    def create
      @user = User.new(user_params)
      if @user.save
        flash[:success] = "Register user success"
        redirect_to :action => 'list'
      else
        flash[:error] = "Register user false"
        render action: 'new'
      end
    end

  # list all user in DB
    def list
      @users = User.all
    end

  # user update password
    def update
      @user = User.find(params[:id])
      if @user.update_attributes(user_params).save
        redirect_to :action => 'show', :id => @user
      else
        render :action => 'edit'
      end
    end

  # Disyplay a user to user edit it
    def edit
      @user = User.find(params[:id])
    end

  # remove User from DB
    def delete
      User.find(params[:id]).destroy
      redirect_to :action => 'list'
    end


  def show
    @user = User.find(params[:id])
  end
end
