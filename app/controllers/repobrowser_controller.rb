class RepobrowserController < ApplicationController

  protect_from_forgery only: []

  def show
    render layout: 'reduced'
  end

  def content
    @project    = Project.find(params[:project_id])
    @repository = @project.repository
    @parent     = URI.decode(params[:dir])

    if @repository.nil?
      render text: 'There is no repository defined for this project'
    else
      @dirs  = []
      @files = []

      p = @parent
      p.gsub!('%20', ' ')
      p.gsub!('\/\/', '\/')

      entries = @repository.entries(p)

      entries.each do |entrie|
        r = entrie.path
        r = r.split('/').last
        if entrie.is_dir?
          @dirs.push(r)
        else
          @files.push(r)
        end
      end

      @entries = [@dirs, @files]
      render layout: 'reduced'
    end
  end

end
