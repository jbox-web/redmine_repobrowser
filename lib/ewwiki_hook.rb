class EWWikiHook < Redmine::Hook::ViewListener
  def view_layouts_base_html_head(context={})
    javascript_include_tag("toolbarmod.js", :plugin => 'redmine_repobrowser') +
      stylesheet_link_tag('toolbarmod.css', :plugin => 'redmine_repobrowser')
  end
end
