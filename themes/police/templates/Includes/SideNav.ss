<div class="sidenav">

			<% if Children %>
			
			<h2>$MenuTitle</h2>
		<ul>
			<% loop Children %>
			<li><a href="$Link">$MenuTitle</a>
				<% if Children %>
				<ul>
					<% loop Children %>
					<li><a href="$Link">$MenuTitle</a></li>
					<% end_loop %>
				</ul>
				<% end_if %>
			</li>
			<% end_loop %>
			<% end_if %>
		</ul>

<% if Parent %>
<% if Siblings %>
	<h2><a href="$Parent.Link">$Parent.Title</a></h2>
	<ul>
	<% loop Siblings %>
	<li><% if LinkOrCurrent = current %>$MenuTitle<% else %><a href="$Link">$MenuTitle</a><% end_if %></li>
	<% end_loop %>
	</ul>
<% end_if %>
<% end_if %>

</div>