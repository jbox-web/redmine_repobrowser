require_dependency 'ewwiki_hook'

Redmine::Plugin.register :redmine_repobrowser do
  name 'Repository browser plugin'
  author 'Gilbert Johannes Martin Forkel'
  description 'Adds a button to the wiki that allows to graphically choose links to the projects repositories'
  version '1.1.0'
  url 'https://github.com/gilbertf/redmine_repobrowser'
end
