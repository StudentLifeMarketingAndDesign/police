<div class="blogSummary">
	<h2 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	$Content
	<p class="blogVitals">
		<% _t('POSTEDBY', 'Posted by') %> $Author.XML |
 		$Date.Long
		<% if TagsCollection %> | Tags: <% control TagsCollection %><a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>, <% end_if %><% end_control %><% end_if %></p>
</div>