class EWWikiHook < Redmine::Hook::ViewListener
class DemoPluginHooks < Redmine::Hook::ViewListener
    render_on :view_layouts_base_html_head,
                :partial => 'repobrowser/toolbarmod'

end
end
