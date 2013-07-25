<div class="sidenav">

			<% if Children %>
			
			<h2>$MenuTitle</h2>
		<ul>
			<% control Children %>
			<li><a href="$Link">$MenuTitle</a>
				<% if Children %>
				<ul>
					<% control Children %>
					<li><a href="$Link">$MenuTitle</a></li>
					<% end_control %>
				</ul>
				<% end_if %>
			</li>
			<% end_control %>
			<% end_if %>
		</ul>

<% if Parent %>
<% if Siblings %>
	<h2><a href="$Parent.Link">$Parent.Title</a></h2>
	<ul>
	<% control Siblings %>
	<li><% if LinkOrCurrent = current %>$MenuTitle<% else %><a href="$Link">$MenuTitle</a><% end_if %></li>
	<% end_control %>
	</ul>
<% end_if %>
<% end_if %>

</div>