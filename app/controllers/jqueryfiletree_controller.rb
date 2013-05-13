class JqueryfiletreeController < ApplicationController
  protect_from_forgery :only => []

  before_filter :find_project

  def find_project
    @project = Project.find(params[:id])
  end

  def show
    render :layout => 'reduced'
  end

  def content
    @parent = params[:dir]
    @project_id = @project.id
    @project = Project.find(@project_id)
    @repository = @project.repository
    if (@repository == nil)
      render :text => "There is no repository defined for this project"
    else
      @dirs = []
      @files = []
      p = @parent
      p.gsub!('%20',' ')
      p.gsub!('\/\/','\/')
      @entries = @repository.entries(path=p)
      @entries.each do |entrie|
        r = entrie.path
        r = r.split('/').last
        if entrie.is_dir?
          @dirs.push(r)
        else
          @files.push(r)
        end
      end
      @dir = [@dirs,@files]
      render :layout => 'reduced'
    end
  end

end
