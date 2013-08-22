module RedmineRepobrowser
  module Hooks
    class AddPluginRender < Redmine::Hook::ViewListener

      render_on :view_layouts_base_html_head, :partial => 'repobrowser/toolbarmod'

    end
  end
end
