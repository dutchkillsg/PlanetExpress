class JobsController < ApplicationController
  def index
    @Jobs = Job.all
  end

  def edit
    @Jobs = Jobs.find(params[:id])
    puts @Jobs.inspect
  end

  def update
    @Jobs = Job.find(params[:id])
    @Jobs.update_attributes(description: params[:Job][:description], origin: params[:Job][:origin], destination: params[:Job][:destination], cost: params[:Job][:cost], containers_needed: params[:Job][:containers_needed])
    redirect_to 'show'
  end

  def show
    @Jobs = Job.find(params[:id])
  end

  def destroy
    @Jobs = Job.find(params[:id])
    @Jobs.destroy
    redirect_to 'index'
  end

  def new
    @Jobs = Job.new
  end

  def create
    @Jobs = Job.create(description: params[:Job][:description], origin: params[:Job][:origin], destination: params[:Job][:destination], cost: params[:Job][:cost], containers_needed: params[:Job][:containers_needed])
    @Jobs.save
  end

end
