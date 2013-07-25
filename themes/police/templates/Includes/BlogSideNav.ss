<div class="sidenav">
	<% if BlogEntries %>
	<h2>News</h2>
	<ul>
		<% control BlogEntries %>
				<li><a href="$Link">$Title</a></li>
		<% end_control %>
	</ul>
	<% end_if %>

</div>