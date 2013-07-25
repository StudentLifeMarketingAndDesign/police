	<% require themedCSS(homepage) %> 
<div id="container">
<div id="content">

<div id="featured_box">
	<div id="featured_content">
		<img src="$ThemeDir/images/safer_ui_community.png" />
		<p>Our mission is to provide each member of the University of Iowa community with a sense of security throughout campus by promoting a safe learning environment at all times and educating students, faculty, and staff in matters of protection and responsibility.</p>
	<div id="featured_buttons">
		<!--<img src="$ThemeDir/images/intro_video.png" />-->
		<a href="/about"><img src="$ThemeDir/images/about_ui_dps.png" /></a>
	</div>
	</div>
</div>
<div class="clear"></div>
<div id="content_navigation">

	<% control Menu(1) %>
		<% if Children %>
				<div class="content_link block{$Pos}">
				<h2><a href="$Link">$MenuTitle</a></h2>
				
				<ul>
				<% control Children %>
				<li><a href="$Link">$MenuTitle</a></li>
				<% end_control %>
				</ul>
				
				</div>
		<% end_if %>
<% end_control %>

</div>
</div>

<div id="sidebar">

	<div id="social_media" class="goldbox">
		<div id="newsletter_signup">
			<h1>Police Newsletter</h1>
			<p>The UI Police Crime Prevention Newsletter serves to enhance the safety of University of Iowa faculty, staff, and students.</p> 
			<p><a href="/stay-informed/crime-prevention-newsletter/">Subscribe here or access our entire archive of newsletters.</a></p>
		</div>
		<ul>
			<li id="social_media_newsletter"><a href="http://police.uiowa.edu/stay-informed/crime-prevention-newsletter/" class="noicon">University of Iowa Police Newsletter</a></li>
			<li id="social_media_twitter"><a href="http://twitter.com/UIowa_Police" class="noicon">University of Iowa Police on Twitter</a></li>
			<li id="social_media_facebook"><a href="http://www.facebook.com/pages/University-of-Iowa-Police/156090247743671" class="noicon">University of Iowa Police on Facebook</a></li>
			<li id="social_media_rss"><a href="/news/rss" class="noicon">University of Iowa Police News RSS Feed</a></li>
					
		</ul>
			<div class="clear-left"></div>
	</div>
	
	<div id="latest_news" class="goldbox">
	
	<h1>Latest News</h1>

	<% if latestBlogEntries %>
		<% control latestBlogEntries(2) %>
		<div class="homepage_blog_entry">
			<h2 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
			<p class="authorDate">$Date.Long</p>
			$Summary
		</div>
		<% end_control %>
	<% else %>
		<h3><% _t('NOENTRIES', 'There are no blog entries') %></h3>
	<% end_if %>

	
	</div>
	

	
</div>
