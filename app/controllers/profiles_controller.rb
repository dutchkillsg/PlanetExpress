class ProfilesController < ApplicationController
  def index
    @Profile = Profile.all
  end

  def edit
    @Profile = Profile.find(params[:id])
    puts @Profile.inspect
  end

  def update
    @Profile = Profile.find(params[:id])
    @Profile.update_attributes(name: params[:profile][:name], fleet: params[:profile][:fleet])
    redirect_to 'show'
  end

  def show
    @Profile = Profile.find(params[:id])
  end

  def destroy
    @Profile = Profile.find(params[:id])
    @Profile.destroy
    redirect_to 'index'
  end

  def new
    @Profile = Profile.new
  end

  def create
    @Profile = Profile.create(name: params[:profile][:name], fleet: params[:profile][:fleet])
    @Profile.save
  end


end
