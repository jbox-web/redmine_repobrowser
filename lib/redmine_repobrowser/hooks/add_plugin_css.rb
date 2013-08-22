module RedmineRepobrowser
  module Hooks
    class AddPluginCss < Redmine::Hook::ViewListener

      def view_layouts_base_html_head(context={})
        return stylesheet_link_tag(:toolbarmod, :plugin => 'redmine_repobrowser')
      end

    end
  end
end
