class SpaceshipsController < ApplicationController
  def index
    @Spaceships = Spaceship.all
  end

  def edit
    @Spaceships = Spaceship.find(params[:id])
    puts @Spaceships.inspect
  end

  def update
    @Spaceships = Spaceship.find(params[:id])
    @Spaceships.update_attributes(name: params[:Spaceships][:name], capacity: params[:Spaceships][:capacity], location: params[:Spaceships][:location])
    redirect_to 'show'
  end

  def show
    @Spaceships = Spaceship.find(params[:id])
  end

  def destroy
    @Spaceships = Spaceship.find(params[:id])
    @Spaceships.destroy
    redirect_to 'index'
  end

  def new
    @Spaceships = Spaceship.new
  end

  def create
    @Spaceships = Spaceship.create(name: params[:Spaceships][:name], capacity: params[:Spaceships][:capacity], location: params[:Spaceships][:location])
    @Spaceships.save
  end

end
