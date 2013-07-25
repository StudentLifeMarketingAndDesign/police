<div id="container">
<div id="content"> 
	<h1>$Title</h1>
	$Content

<% control Children %>
	<div class="split {$EvenOdd}">
		<% if PreviewImage %> <a href="$Link"><img src="$PreviewImage.URL" alt="$Title"/></a> <% end_if %>
		<h2><a href="$Link">$Title</a></h2>
		$Summary
	</div>
<% end_control %>
</div>
<div id="sidebar">
	<% include SideNav %>
	<% include SocialMedia %>
</div>