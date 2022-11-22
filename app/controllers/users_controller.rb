class UsersController < ApplicationController
  before_action :acthenticate_user!
  def new
    @user = User.all
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(parmas[:id])
    @books = @user.books
  end

  def edit
  end
end
