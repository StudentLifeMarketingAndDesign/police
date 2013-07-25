<div class="sidenav">
	<% if BlogEntries %>
	<h2>News</h2>
	<ul>
		<% loop BlogEntries %>
				<li><a href="$Link">$Title</a></li>
		<% end_loop %>
	</ul>
	<% end_if %>

</div>