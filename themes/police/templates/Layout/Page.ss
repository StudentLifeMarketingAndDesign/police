
<div id="container">
<div id="content"> $Content 

<% if GoogleMapURL %>
	<iframe width="620" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="{$GoogleMapURL}&output=embed"></iframe>
	<br />
	<small><a href="$GoogleMapURL" style="color:#0000FF;text-align:left">View in a larger map </a></small>
<% end_if %>

$Form</div>
<div id="sidebar">
	<% include SideNav %>
	<% include SocialMedia %>
</div>
