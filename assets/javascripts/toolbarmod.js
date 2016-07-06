(function () {
if(typeof RedmineWikiToolbarExt === 'undefined') return false;

var buttons = [
	{
		title: 'repo', after: 'space5',
		fn: {
			wiki:function() {
				$dialog = $('#dialog_repo_browser').dialog({
					autoOpen: false,
					modal: false,
					height: 400,
					width: 300,
					title: 'Repository browser',
					resizable: true
				}); 
				$dialog.data('wikiToolbar', this);	
				$dialog.dialog('open');
			}
		}
	}
];
RedmineWikiToolbarExt.ToolbarElements.add(buttons);
}());
