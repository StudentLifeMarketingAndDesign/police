<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>$Title - UI Department of Public Safety - The University of Iowa</title>
<link rel="icon" type="image/vnd.microsoft.icon" href="/$ThemeDir/images/favicon.ico">
<script type="text/javascript" src="/$ThemeDir/javascripts/prototype.js"></script>
<% require themedCSS(styles) %>
<% base_tag %>
$MetaTags
</head>
<body id="home">
<% include UiowaBar %>
<div id="wrapper">
	<div id="header">
		<h1>University of Iowa Department of Public Safety</h1>
		<a href="/"><img src="$ThemeDir/images/ui_police_shield.png" alt="University of Iowa Police" id="shield"/></a>
		<div id="search">
<form  id="SearchForm_SearchForm" action="/home/SearchForm" method="get" enctype="application/x-www-form-urlencoded"> 

				<label for="SearchForm_SearchForm_Search" style="display:none;"></label><input type="text" class="text nolabel" id="SearchForm_SearchForm_Search" name="Search" />
				<input type="image" name="search_button" title="Go" src="$ThemeDir/images/search_icon.gif" alt="search button" id="search_submit" />
			</form>
			

		</div>
	</div>
	<% include Navigation %>
	$Layout
	<div id="footer">
		<p id="address_footer"><a href="http://police.uiowa.edu/" class="noicon"><img src="$ThemeDir/images/ui_dps_footer.png" alt="Department of public saftey"/></a><br />
			808 University Capitol Centre - 200 S. Capitol St. - Iowa City, IA 52242
			<% if CurrentMember %>  <a id="edit-link" target="_blank" href="$EditURL"><br />Edit this Page </a><% end_if %></p>
		<p id="contact_footer"><a href="/contact">Emergency? Dial 911</a></p>
		<div class="clear"></div>
	</div>
</div>
<div id="credits">
	<p id="copyright">&copy; <a href="http://www.uiowa.edu/" class="noicon">The University of Iowa</a> {$Now.Year} All rights reserved.</p>
	<p id="md_credits">Designed and Developed by <a href="http://studentlife.uiowa.edu/md/" class="noicon">Student Life Marketing &amp; Design</a>. Link icons by <a href="http://www.famfamfam.com/lab/icons/silk/" class="noicon">FamFamFam</a>.</p>
	<div class="clear"></div>
</div>
</div>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-426753-50', 'uiowa.edu');
  ga('send', 'pageview');

</script>
</body>
</html>
