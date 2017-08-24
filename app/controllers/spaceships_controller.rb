class SpaceshipsController < ApplicationController
  def index
    @Spaceships = Spaceship.all
  end

  def edit
    @Spaceships = Spaceship.find(params[:id])
    puts @Spaceships.inspect
  end

  def update
    @User = current_user.id
    @current_user = current_user
    @Spaceships = Spaceship.find(params[:id])
    @Spaceships.update_attributes(name: params[:spaceship][:name], capacity: params[:spaceship][:capacity], location: params[:spaceship][:location], user_id: @User )
    @Spaceships.save
    redirect_to @current_user
  end

  def show
    @Spaceships = Spaceship.find(params[:id])
    user_id = Spaceship.select(:user_id).find(params[:id])
    @User = @Spaceships.user
  end

  def destroy
    @current_user = current_user
    @Spaceships = Spaceship.find(params[:id])
    @Spaceships.destroy
    redirect_to @current_user
  end

  def new
    @Spaceships = Spaceship.new
  end

  def create
    @User = current_user
    @Spaceships = Spaceship.create(name: params[:spaceship][:name], capacity: params[:spaceship][:capacity], location: params[:spaceship][:location], user_id: @User)
    @Spaceships.save
    redirect_to @User
  end

end
