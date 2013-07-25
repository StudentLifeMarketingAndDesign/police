<html>
<head>
<style>
p{
font-size: 1.2em;
color: #444;
}
p.comments{
font-size: 1.4em;
color: #222;
padding: 20px;
}
</style>
</head>
<body>
An online project ID submission has been receieved.<br />
<br />
Name: $Name<br />
Email: $Email<br />
Address: $Address<br />
<br />
<table>
<tr><td>Type</td><td>Model</td><td>Serial</td><td>Value<br />
<% if Item1Type %>
<tr><td>$Item1Type</td><td>$Item1Model</td><td>$Item1Serial</td><td> $Item1Value</tr>
<% end_if %>
<% if Item2Model %>
<tr>$Item2Type</td><td>$Item2Model</td><td>$Item2Serial</td><td>$Item2Value</tr>
<% end_if %>
<% if Item3Model %>
<tr>$Item3Type</td><td>$Item3Model</td><td>$Item3Serial</td><td>$Item3Value</tr>
<% end_if %>
<% if Item4Model %>
<tr>$Item4Type</td><td>$Item4Model</td><td>$Item4Serial</td><td>$Item4Value</tr>
<% end_if %>
<% if Item5Model %>
<tr>$Item5Type</td><td>$Item5Model</td><td>$Item5Serial</td><td>$Item5Value</tr>
<% end_if %>
<% if Item6Model %>
<tr>$Item6Type</td><td>$Item6Model</td><td>$Item6Serial</td><td>$Item6Value</tr>
<% end_if %>
<% if Item7Model %>
<tr>$Item7Type</td><td>$Item7Model</td><td>$Item7Serial</td><td>$Item7Value</tr>
<% end_if %>
<% if Item8Model %>
<tr>$Item8Type</td><td>$Item8Model</td><td>$Item8Serial</td><td>$Item8Value</tr>
<% end_if %>
<% if Item9Model %>
<tr>$Item9Type</td><td>$Item9Model</td><td>$Item9Serial</td><td>$Item9Value</tr>
<% end_if %>
<% if Item10Model %>
<tr>$Item10Type</td><td>$Item10Model</td><td>$Item10Serial</td><td>$Item10Value</tr>
<% end_if %>


 
</body>
</html>