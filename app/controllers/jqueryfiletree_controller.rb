class JqueryfiletreeController < ApplicationController
  protect_from_forgery :only => []
  def content
    @parent = params[:dir]
    @project = Project.find(1)
    @repository = @project.repository
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
