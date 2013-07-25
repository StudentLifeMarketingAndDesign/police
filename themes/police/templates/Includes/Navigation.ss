<div id="navigation">
		<ul id="nav">
			<% control Menu(1) %>
				<li><a href="$Link">$Title</a> 
				
				<% if Children %>
					<ul>
				<% control Children %>
					<li><a href="$Link">$Title</a></li>
				<% end_control %>
				</ul>
				<% end_if %>
				
				</li>
			<% end_control %>
			<!--<li><a href="#">Home</a></li>
			<li><a href="#">News</a>
				<ul>
					<li><a href="#">Latest News</a></li>
					<li><a href="#">Campus Crime Alerts</a></li>
					<li><a href="#">Crime Prevention Tips</a></li>
					<li><a href="#">UIPD Newsletter</a></li>
				</ul>
			</li>
			<li><a href="#">Be Proactive</a>
				<ul>
					<li><a href="#">Report a Crime on Campus</a></li>
					<li><a href="#">Report Sexual Assault</a></li>
					<li><a href="#">Iowa City Area Crimestoppers</a></li>
				</ul>
			</li>
			<li><a href="#">Stay Informed</a>
				<ul>
					<li><a href="#">Campus Crime Alerts</a></li>
					<li><a href="#">Emergency Communication</a></li>
					<li><a href="#">Emergency Procedures</a></li>
					<li><a href="#">FAQ</a></li>
					
					<li><a href="#">Fire Safety</a></li>
				</ul>					
			</li>
			<li><a href="#">Services</a>
				<ul>
					<li><a href="#">Arrest Log</a></li>
					<li><a href="#">Press Reports</a></li>
					<li><a href="#">Fire Log</a></li>
					<li><a href="#">Annual Police Service Statistics</a></li>
				</ul>
			</li>
			<li><a href="#">Records</a>
				<ul>
					<li><a href="#">Educational Programs</a>
						<ul>
							<li><a href="#">Rape Aggression Defense (RAD)</a></li>
							<li><a href="#">Personal Safety and Self-Protection</a></li>
							<li><a href="#">Panic Alarms and Disruptive Persons</a></li>
							<li><a href="#">Counterfeit Currency Detection</a></li>
							<li><a href="#">Alcohol Awareness Course</a></li>
							<li><a href="#">Club Drugs: "From the Rave to the Grave"</a></li>
						</ul>
					</li>
					<li><a href="#">Nite Ride</a></li>
					<li><a href="#">Project UV</a></li>
					<li><a href="#">Code Blue Phones</a></li>
					<li><a href="#">Hiring UI DPS</a></li>
				</ul>
			</li>
			<li><a href="#">About</a>
				<ul>
					<li><a href="#">Campus Security Act</a></li>
					<li><a href="#">Employment Opportunities</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>
			</li>-->
		</ul>
	</div>