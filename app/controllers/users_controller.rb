class UsersController < ApplicationController
  
  def index
    @stories = current_user.stories
  end

  def show
    def show
      @story = current_user.stories.build if logged_in?
      @user = User.new
    end
  end

  def update
    @user = User.find(params[:id])
    @user.admin = !@user.admin
    @user.save
    redirect_to admin_index_path, notice: 'Admin rol was change for user'
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end
end
