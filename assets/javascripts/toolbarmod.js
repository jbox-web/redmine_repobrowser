window.onload = function() {
  if (typeof(jsToolBar) != "undefined") {
jsToolBar.prototype.elements.repo={
	type:"button",title:"Add Repository link",fn:{wiki:function(){$(function() {
	$dialog = $('<div></div>')
               .html('<iframe style="border: 0px; " src="jqueryfiletree" %> width="100%" height="100%"></iframe>')
               .dialog({
                   autoOpen: false,
                   modal: false,
                   height: 400,
                   width: 300,
                   title: "Repository browser",
		   resizable: true
               });
$dialog.dialog('open');
});}}}
    // redraw toolbar to get the new buttons to show
    wikiToolbar.draw();
  }
};
