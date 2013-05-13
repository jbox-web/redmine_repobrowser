class EWWikiHook < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context={})
    javascript_include_tag("toolbarmod.js", :plugin => 'filebrowser') +
      stylesheet_link_tag('toolbarmod.css', :plugin => 'filebrowser')
  end
end
