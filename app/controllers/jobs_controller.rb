class JobsController < ApplicationController
  def index
    @Jobs = Job.all
  end

  def edit
    @Jobs = Job.find(params[:id])
    puts @Jobs.inspect
  end

  def update

    @Jobs = Job.find(params[:id])
    @Jobs.update_attributes(description: params[:job][:description], origin: params[:job][:origin], destination: params[:job][:destination], cost: params[:job][:cost], containers_needed: params[:job][:containers_needed])
    @Jobs.save
    redirect_to '/jobs'
  end

  def show
    @Jobs = Job.find(params[:id])
  end

  def destroy
    @Jobs = Job.find(params[:id])
    @Jobs.destroy
    redirect_to '/jobs'
  end

  def new
    @Jobs = Job.new
  end

  def create
    @Jobs = Job.create(description: params[:job][:description], origin: params[:job][:origin], destination: params[:job][:destination], cost: params[:job][:cost], containers_needed: params[:job][:containers_needed])
    @Jobs.save
    redirect_to '/jobs'
  end

end
