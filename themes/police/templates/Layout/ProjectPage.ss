<div id="container">
  <div id="content">
  	<% if Success %>
	<div><h1>Your submission has been received.</h1><h1>Thank You.</h1></div>
	<% end_if %>
    <div>
		$Content
	</div>
    $Form
	
<style type="text/css">
.itemsheader {
  color: #999;
  text-align: center;
}
span.itemtype {
  display: block;
  float: left;
  width: 150px;
}
span.itemmodel {
  display: block;
  float: left;
  width: 190px;
}
span.itemserial {
  display: block;
  float: left;
  width: 150px;
}
span.itemvalue {
  display: block;
  float: left;
  width: 85px;
}
span.itemlink {
  float: right;
}
span.itemlink a {
  color: #0000FF;
  text-decoration: none;
}
input.itemmodel {
  width: 170px;
}
input.itemserial {
  width: 140px;
}
input.itemvalue {
  width: 80px;
}
</style>







	
<form id="Form_ProjectIDForm" action="/services/project-id/ProjectIDForm" method="post" enctype="application/x-www-form-urlencoded">
	<p id="Form_ProjectIDForm_error" class="message " style="display: none"></p>
	<fieldset>
			<div id="Your Name" class="field text "><label class="left" for="Form_ProjectIDForm_Your-Name">Your Name</label><div class="middleColumn"><input type="text" class="text" id="Form_ProjectIDForm_Your-Name" name="Name" value="" /></div></div> 
		
			<div id="Your Residence Hall Address" class="field text "><label class="left" for="Form_ProjectIDForm_Your-Residence-Hall-Address">Your Residence Hall Address</label><div class="middleColumn"><input type="text" class="text" id="Form_ProjectIDForm_Your-Residence-Hall-Address" name="Address" value="" /></div></div> 
		
			<div id="Your Email Address" class="field text "><label class="left" for="Form_ProjectIDForm_Your-Email-Address">Your Email Address</label><div class="middleColumn"><input type="text" class="text" id="Form_ProjectIDForm_Your-Email-Address" name="Email" value="" /></div></div>
			<div class="itemsheader">
			<span class="itemtype">Type</span>
			<span class="itemmodel">Model/Description</span>
			<span class="itemserial">Serial Number</span>
			<span class="itemvalue">Value ($)</span>
			</div>
			<div id="item1" class="item">
			<span class="itemtype"><select id="Form_ProjectIDForm_Item1Type" name="Item1Type" class="itemsheader"><option value="Computer">Computer</option><option value="MP3/CD Player">MP3/CD Player</option><option value="Game System">Game System</option><option value="Camera">Camera</option><option value="Stereo">Stereo</option><option value="Calculator">Calculator</option><option value="Phone">Phone</option><option value="Answering Machine">Answering Machine</option><option value="Jewelry">Jewelry</option><option value="Musical Instrument">Musical Instrument</option><option value="Power Tools">Power Tools</option><option value="Radio">Radio</option><option value="Television">Television</option><option value="Bicycle">Bicycle</option><option value="Speakers">Speakers</option><option value="App">App</option><option value="Other">Other</option></select></span>
			<span class="itemmodel"><input type="text" class="itemmodel" id="Form_ProjectIDForm_Item1Model" name="Item1Model" value="" size="5"/></span>
			<span class="itemserial"><input type="text" class="itemserial" id="Form_ProjectIDForm_Item1Serial" name="Item1Serial" value="" size="5" /></span>
			<span class="itemvalue"><input type="text" class="itemvalue" id="Form_ProjectIDForm_Item1Value" name="Item1Value" value="" size="5" /></span>
			<span class="itemlink"><a href="#" onclick="$('link2').hide();$('item2').show();return false;" id="link2">Add Another Item</a></span>
			</div>
			
			<div id="item2" class="item" style="display: none;">
			<span class="itemtype"><select id="Form_ProjectIDForm_Item2Type" name="Item2Type" class="itemsheader"><option value="Computer">Computer</option><option value="MP3/CD Player">MP3/CD Player</option><option value="Game System">Game System</option><option value="Camera">Camera</option><option value="Stereo">Stereo</option><option value="Calculator">Calculator</option><option value="Phone">Phone</option><option value="Answering Machine">Answering Machine</option><option value="Jewelry">Jewelry</option><option value="Musical Instrument">Musical Instrument</option><option value="Power Tools">Power Tools</option><option value="Radio">Radio</option><option value="Television">Television</option><option value="Bicycle">Bicycle</option><option value="Speakers">Speakers</option><option value="App">App</option><option value="Other">Other</option></select></span>
			<span class="itemmodel"><input type="text" class="itemmodel" id="Form_ProjectIDForm_Item1Model" name="Item2Model" value="" size="5"/></span>
			<span class="itemserial"><input type="text" class="itemserial" id="Form_ProjectIDForm_Item1Serial" name="Item2Serial" value="" size="5" /></span>
			<span class="itemvalue"><input type="text" class="itemvalue" id="Form_ProjectIDForm_Item1Value" name="Item2Value" value="" size="5" /></span>
			<span class="itemlink"><a href="#" onclick="$('link3').hide();$('item3').show();return false;" id="link3">Add Another Item</a></span>
			</div>
			
			<div id="item3" class="item" style="display: none;">
			<span class="itemtype"><select id="Form_ProjectIDForm_Item1Type" name="Item3Type" class="itemsheader"><option value="Computer">Computer</option><option value="MP3/CD Player">MP3/CD Player</option><option value="Game System">Game System</option><option value="Camera">Camera</option><option value="Stereo">Stereo</option><option value="Calculator">Calculator</option><option value="Phone">Phone</option><option value="Answering Machine">Answering Machine</option><option value="Jewelry">Jewelry</option><option value="Musical Instrument">Musical Instrument</option><option value="Power Tools">Power Tools</option><option value="Radio">Radio</option><option value="Television">Television</option><option value="Bicycle">Bicycle</option><option value="Speakers">Speakers</option><option value="App">App</option><option value="Other">Other</option></select></span>
			<span class="itemmodel"><input type="text" class="itemmodel" id="Form_ProjectIDForm_Item1Model" name="Item3Model" value="" size="5"/></span>
			<span class="itemserial"><input type="text" class="itemserial" id="Form_ProjectIDForm_Item1Serial" name="Item3Serial" value="" size="5" /></span>
			<span class="itemvalue"><input type="text" class="itemvalue" id="Form_ProjectIDForm_Item1Value" name="Item3Value" value="" size="5" /></span>
			<span class="itemlink"><a href="#" onclick="$('link4').hide();$('item4').show();return false;" id="link4">Add Another Item</a></span>
			</div>
			
			<div id="item4" class="item" style="display: none;">
			<span class="itemtype"><select id="Form_ProjectIDForm_Item1Type" name="Item4Type" class="itemsheader"><option value="Computer">Computer</option><option value="MP3/CD Player">MP3/CD Player</option><option value="Game System">Game System</option><option value="Camera">Camera</option><option value="Stereo">Stereo</option><option value="Calculator">Calculator</option><option value="Phone">Phone</option><option value="Answering Machine">Answering Machine</option><option value="Jewelry">Jewelry</option><option value="Musical Instrument">Musical Instrument</option><option value="Power Tools">Power Tools</option><option value="Radio">Radio</option><option value="Television">Television</option><option value="Bicycle">Bicycle</option><option value="Speakers">Speakers</option><option value="App">App</option><option value="Other">Other</option></select></span>
			<span class="itemmodel"><input type="text" class="itemmodel" id="Form_ProjectIDForm_Item1Model" name="Item4Model" value="" size="5"/></span>
			<span class="itemserial"><input type="text" class="itemserial" id="Form_ProjectIDForm_Item1Serial" name="Item4Serial" value="" size="5" /></span>
			<span class="itemvalue"><input type="text" class="itemvalue" id="Form_ProjectIDForm_Item1Value" name="Item4Value" value="" size="5" /></span>
			<span class="itemlink"><a href="#" onclick="$('link5').hide();$('item5').show();return false;" id="link5">Add Another Item</a></span>
			</div>
			
			<div id="item5" class="item" style="display: none;">
			<span class="itemtype"><select id="Form_ProjectIDForm_Item1Type" name="Item5Type" class="itemsheader"><option value="Computer">Computer</option><option value="MP3/CD Player">MP3/CD Player</option><option value="Game System">Game System</option><option value="Camera">Camera</option><option value="Stereo">Stereo</option><option value="Calculator">Calculator</option><option value="Phone">Phone</option><option value="Answering Machine">Answering Machine</option><option value="Jewelry">Jewelry</option><option value="Musical Instrument">Musical Instrument</option><option value="Power Tools">Power Tools</option><option value="Radio">Radio</option><option value="Television">Television</option><option value="Bicycle">Bicycle</option><option value="Speakers">Speakers</option><option value="App">App</option><option value="Other">Other</option></select></span>
			<span class="itemmodel"><input type="text" class="itemmodel" id="Form_ProjectIDForm_Item1Model" name="Item5Model" value="" size="5"/></span>
			<span class="itemserial"><input type="text" class="itemserial" id="Form_ProjectIDForm_Item1Serial" name="Item5Serial" value="" size="5" /></span>
			<span class="itemvalue"><input type="text" class="itemvalue" id="Form_ProjectIDForm_Item1Value" name="Item5Value" value="" size="5" /></span>
			<span class="itemlink"><a href="#" onclick="$('link6').hide();$('item6').show();return false;" id="link6">Add Another Item</a></span>
			</div>
			
			<div id="item6" class="item" style="display: none;">
			<span class="itemtype"><select id="Form_ProjectIDForm_Item1Type" name="Item6Type" class="itemsheader"><option value="Computer">Computer</option><option value="MP3/CD Player">MP3/CD Player</option><option value="Game System">Game System</option><option value="Camera">Camera</option><option value="Stereo">Stereo</option><option value="Calculator">Calculator</option><option value="Phone">Phone</option><option value="Answering Machine">Answering Machine</option><option value="Jewelry">Jewelry</option><option value="Musical Instrument">Musical Instrument</option><option value="Power Tools">Power Tools</option><option value="Radio">Radio</option><option value="Television">Television</option><option value="Bicycle">Bicycle</option><option value="Speakers">Speakers</option><option value="App">App</option><option value="Other">Other</option></select></span>
			<span class="itemmodel"><input type="text" class="itemmodel" id="Form_ProjectIDForm_Item1Model" name="Item6Model" value="" size="5"/></span>
			<span class="itemserial"><input type="text" class="itemserial" id="Form_ProjectIDForm_Item1Serial" name="Item6Serial" value="" size="5" /></span>
			<span class="itemvalue"><input type="text" class="itemvalue" id="Form_ProjectIDForm_Item1Value" name="Item6Value" value="" size="5" /></span>
			<span class="itemlink"><a href="#" onclick="$('link7').hide();$('item7').show();return false;" id="link7">Add Another Item</a></span>
			</div>
			
			<div id="item7" class="item" style="display: none;">
			<span class="itemtype"><select id="Form_ProjectIDForm_Item1Type" name="Item7Type" class="itemsheader"><option value="Computer">Computer</option><option value="MP3/CD Player">MP3/CD Player</option><option value="Game System">Game System</option><option value="Camera">Camera</option><option value="Stereo">Stereo</option><option value="Calculator">Calculator</option><option value="Phone">Phone</option><option value="Answering Machine">Answering Machine</option><option value="Jewelry">Jewelry</option><option value="Musical Instrument">Musical Instrument</option><option value="Power Tools">Power Tools</option><option value="Radio">Radio</option><option value="Television">Television</option><option value="Bicycle">Bicycle</option><option value="Speakers">Speakers</option><option value="App">App</option><option value="Other">Other</option></select></span>
			<span class="itemmodel"><input type="text" class="itemmodel" id="Form_ProjectIDForm_Item1Model" name="Item7Model" value="" size="5"/></span>
			<span class="itemserial"><input type="text" class="itemserial" id="Form_ProjectIDForm_Item1Serial" name="Item7Serial" value="" size="5" /></span>
			<span class="itemvalue"><input type="text" class="itemvalue" id="Form_ProjectIDForm_Item1Value" name="Item7Value" value="" size="5" /></span>
			<span class="itemlink"><a href="#" onclick="$('link8').hide();$('item8').show();return false;" id="link8">Add Another Item</a></span>
			</div>
			
			<div id="item8" class="item" style="display: none;">
			<span class="itemtype"><select id="Form_ProjectIDForm_Item1Type" name="Item8Type" class="itemsheader"><option value="Computer">Computer</option><option value="MP3/CD Player">MP3/CD Player</option><option value="Game System">Game System</option><option value="Camera">Camera</option><option value="Stereo">Stereo</option><option value="Calculator">Calculator</option><option value="Phone">Phone</option><option value="Answering Machine">Answering Machine</option><option value="Jewelry">Jewelry</option><option value="Musical Instrument">Musical Instrument</option><option value="Power Tools">Power Tools</option><option value="Radio">Radio</option><option value="Television">Television</option><option value="Bicycle">Bicycle</option><option value="Speakers">Speakers</option><option value="App">App</option><option value="Other">Other</option></select></span>
			<span class="itemmodel"><input type="text" class="itemmodel" id="Form_ProjectIDForm_Item1Model" name="Item8Model" value="" size="5"/></span>
			<span class="itemserial"><input type="text" class="itemserial" id="Form_ProjectIDForm_Item1Serial" name="Item8Serial" value="" size="5" /></span>
			<span class="itemvalue"><input type="text" class="itemvalue" id="Form_ProjectIDForm_Item1Value" name="Item8Value" value="" size="5" /></span>
			<span class="itemlink"><a href="#" onclick="$('link9').hide();$('item9').show();return false;" id="link9">Add Another Item</a></span>
			</div>
			
			<div id="item9" class="item" style="display: none;">
			<span class="itemtype"><select id="Form_ProjectIDForm_Item1Type" name="Item9Type" class="itemsheader"><option value="Computer">Computer</option><option value="MP3/CD Player">MP3/CD Player</option><option value="Game System">Game System</option><option value="Camera">Camera</option><option value="Stereo">Stereo</option><option value="Calculator">Calculator</option><option value="Phone">Phone</option><option value="Answering Machine">Answering Machine</option><option value="Jewelry">Jewelry</option><option value="Musical Instrument">Musical Instrument</option><option value="Power Tools">Power Tools</option><option value="Radio">Radio</option><option value="Television">Television</option><option value="Bicycle">Bicycle</option><option value="Speakers">Speakers</option><option value="App">App</option><option value="Other">Other</option></select></span>
			<span class="itemmodel"><input type="text" class="itemmodel" id="Form_ProjectIDForm_Item1Model" name="Item9Model" value="" size="5"/></span>
			<span class="itemserial"><input type="text" class="itemserial" id="Form_ProjectIDForm_Item1Serial" name="Item9Serial" value="" size="5" /></span>
			<span class="itemvalue"><input type="text" class="itemvalue" id="Form_ProjectIDForm_Item1Value" name="Item9Value" value="" size="5" /></span>
			<span class="itemlink"><a href="#" onclick="$('link10').hide();$('item10').show();return false;" id="link10">Add Another Item</a></span>
			</div>
			
			<div id="item10" class="item" style="display: none;">
			<span class="itemtype"><select id="Form_ProjectIDForm_Item1Type" name="Item10Type" class="itemsheader"><option value="Computer">Computer</option><option value="MP3/CD Player">MP3/CD Player</option><option value="Game System">Game System</option><option value="Camera">Camera</option><option value="Stereo">Stereo</option><option value="Calculator">Calculator</option><option value="Phone">Phone</option><option value="Answering Machine">Answering Machine</option><option value="Jewelry">Jewelry</option><option value="Musical Instrument">Musical Instrument</option><option value="Power Tools">Power Tools</option><option value="Radio">Radio</option><option value="Television">Television</option><option value="Bicycle">Bicycle</option><option value="Speakers">Speakers</option><option value="App">App</option><option value="Other">Other</option></select></span>
			<span class="itemmodel"><input type="text" class="itemmodel" id="Form_ProjectIDForm_Item1Model" name="Item10Model" value="" size="5"/></span>
			<span class="itemserial"><input type="text" class="itemserial" id="Form_ProjectIDForm_Item1Serial" name="Item10Serial" value="" size="5" /></span>
			<span class="itemvalue"><input type="text" class="itemvalue" id="Form_ProjectIDForm_Item1Value" name="Item10Value" value="" size="5" /></span>
			</div>
			
		<div class="clear"><!-- --></div> 
	</fieldset> 
 
	
	<div class="Actions"> 
		
			<input class="action " id="Form_ProjectIDForm_action_doProjectIDForm" type="submit" name="action_doProjectIDForm" value="Register Your Items" title="Register Your Items" /> 
		
	</div>
</form>
	
	
	
	
  </div>
<div id="sidebar">
	<% include SideNav %>
	<% include SocialMedia %>
</div>
