
<div id="container">
<div id="content"> 

<h1>$Title</h1>
 
  <% if Query %>
    <p class="searchQuery"><strong>You searched for &quot;{$Query}&quot;</strong></p>
  <% end_if %>
 
  <% if Results %>
	<p class="results_amount">Page $Results.CurrentPage of $Results.TotalPages</p>
      <% control Results %>
        <div class="result">
          <h3 class="result_header"><a href="$Link"><% if MenuTitle %>$MenuTitle<% else %>$Title<% end_if %></a></h3>
          <p>$Content.Summary - <a class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">More &#187;</a></p>
        </div>
      <% end_control %>
  <% else %>
    <p>Sorry, your search query did not return any results.</p>
  <% end_if %>
 
  <% if Results.MoreThanOnePage %>
    <div id="pagination">
		<ul>
      <% if Results.NotFirstPage %>
        	<li><a class="prev" href="$Results.PrevLink" title="View the previous page">Prev</a></li>
      <% end_if %>
      <% control Results.Pages %>
          <% if CurrentBool %>
            <li class="pagination_current"><a href="#">$PageNum</a></li>
          <% else %>
            <li><a href="$Link" title="View page number $PageNum">$PageNum</a></li>
          <% end_if %>
	  <% end_control %>
      <% if Results.NotLastPage %>
        	<li><a class="next" href="$Results.NextLink" title="View the next page">Next</a></li>
      <% end_if %>
		</ul>
    </div>

  <% end_if %>


</div>
<div id="sidebar">
	<% include SideNav %>
	<% include SocialMedia %>
</div>
