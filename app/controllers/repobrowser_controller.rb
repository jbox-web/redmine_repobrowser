class RepobrowserController < ApplicationController
  protect_from_forgery :only => []

  def show
	render :layout => 'reduced'
  end

  def content
    @project = Project.find(params[:project_id])
    @parent = params[:dir]
    @tmp_project_id = @project.id
    @project = Project.find(@tmp_project_id)
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
