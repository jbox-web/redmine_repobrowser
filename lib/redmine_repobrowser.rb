# Set up autoload of patches
def apply_patch(&block)
  ActionDispatch::Callbacks.to_prepare(&block)
end

apply_patch do
  # Hooks
  require_dependency 'redmine_repobrowser/hooks/add_plugin_css'
  require_dependency 'redmine_repobrowser/hooks/add_plugin_render'
end
