
<div id="container">
<div id="content"> 
	<h1>News</h1>	
	<div class="blogEntry">
		<h2 class="postTitle">$Title</h2>

		<% if IsWYSIWYGEnabled %>
			$Content
		<% else %>
			$ParsedContent
		<% end_if %>
		<br />
		<p class="blogVitals">
			<% _t('POSTEDBY', 'Posted by') %> $Author.XML |
	 		$Date.Long
			<% if TagsCollection %> | Tags: <% control TagsCollection %><a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>, <% end_if %><% end_control %><% end_if %></p>
	</div>
</div>
	
<div id="sidebar">
	<% include SideNav %>
	<% include BlogSideBar %>
	<% include SocialMedia %>
</div>
