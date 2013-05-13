class ShowController < ApplicationController
  unloadable

  layout 'base'

  def index
    @project = Project.find(1)
    @repository = @project.repository
    @entries = @repository.entries(path="Pictures")
    render :layout => 'reduced'
  end
end
