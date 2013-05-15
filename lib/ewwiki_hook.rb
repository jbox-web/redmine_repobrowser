class EWWikiHook < Redmine::Hook::ViewListener
	class DemoPluginHooks < Redmine::Hook::ViewListener
		render_on :view_layouts_base_html_head, :partial => 'repobrowser/toolbarmod'
	end
	def view_layouts_base_html_head(context={})
		stylesheet_link_tag('toolbarmod.css', :plugin => 'redmine_repobrowser')
	end
end
