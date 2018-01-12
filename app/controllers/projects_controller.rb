class ProjectsController < ApplicationController
  before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]
  def index
    @projects = Project.all
  end
end
