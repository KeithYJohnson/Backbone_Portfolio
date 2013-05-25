class ProjectsController < ApplicationController


	def create
		@project = @user.Project.new
		# when adding skills
		# @project.skills << Skill.new
		@project.save!

		render :json => @projects
	end

	def index
		@projects = @user.projects
		render :json => @projects
	end

	def update
		@project = Project.find(params[:id])
		@project.update_attributes(params[:project])
		render :json => @project
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		render :json => @project
	end

	protected
	def load_user
		@user = User.find(params[:user_id])
	end
end
