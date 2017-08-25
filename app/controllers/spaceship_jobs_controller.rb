class SpaceshipJobsController < ApplicationController
  def index
    @Spaceships = Spaceship.all
    @Jobs= Job.all
  end

  def edit

  end

  def update
    @User = current_user.id
    @current_user = current_user

  end

  def show

  end

  def destroy

  end

  def new


  end

  def create

    @spaceshipjob = SpaceshipJob.create(spaceship_id: params[:spaceshipjob][:spaceship_id], job_id: params[:spaceshipjob][:job_id])
    @spaceshipjob.save

#fix multuple being assigned to multiple
    if @spaceshipjob.save
					redirect_to current_user
				else
					flash[:notice]="Ship has already been added to this job."
					render :new
				end

  end

end
