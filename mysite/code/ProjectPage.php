<?php
class ProjectPage extends Page {
	public static $db = array(
							  
	);

	public static $has_one = array(
	);
	
	
	function getCMSFields() { 
		$fields = parent::getCMSFields();
		return $fields;
	}

}

class ProjectPage_Controller extends Page_Controller {

	/**
	 * An array of actions that can be accessed via a request. Each array element should be an action name, and the
	 * permissions or conditions required to allow the user to access it.
	 *
	 * <code>
	 * array (
	 *     'action', // anyone can access this action
	 *     'action' => true, // same as above
	 *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
	 *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
	 * );
	 * </code>
	 *
	 * @var array
	 */
	function ProjectIDForm() {
		$fields = new FieldSet(
			new TextField('Name'),
			new TextField('Address'),
			new TextField('Email'),
			new DropdownField('Item1Type', 'Type', array(
				'Computer' => 'Computer',
				'MP3/CD Player' => 'MP3/CD Player',
				'Game System' => 'Game System',
				'Camera' => 'Camera',
				'Stereo' => 'Stereo',
				'Other' => 'Other'
			)),
			new TextField('Item1Model'),
			new TextField('Item1Serial'),
			new TextField('Item1Value'),
			new DropdownField('Item2Type', 'Type', array(
				'Computer' => 'Computer',
				'MP3/CD Player' => 'MP3/CD Player',
				'Game System' => 'Game System',
				'Camera' => 'Camera',
				'Stereo' => 'Stereo',
				'Other' => 'Other'
			)),
			new TextField('Item2Model'),
			new TextField('Item2Serial'),
			new TextField('Item2Value'),
			new DropdownField('Item3Type', 'Type', array(
				'Computer' => 'Computer',
				'MP3/CD Player' => 'MP3/CD Player',
				'Game System' => 'Game System',
				'Camera' => 'Camera',
				'Stereo' => 'Stereo',
				'Other' => 'Other'
			)),
			new TextField('Item3Model'),
			new TextField('Item3Serial'),
			new TextField('Item3Value'),
			new DropdownField('Item4Type', 'Type', array(
				'Computer' => 'Computer',
				'MP3/CD Player' => 'MP3/CD Player',
				'Game System' => 'Game System',
				'Camera' => 'Camera',
				'Stereo' => 'Stereo',
				'Other' => 'Other'
			)),
			new TextField('Item4Model'),
			new TextField('Item4Serial'),
			new TextField('Item41Value'),
			new DropdownField('Item5Type', 'Type', array(
				'Computer' => 'Computer',
				'MP3/CD Player' => 'MP3/CD Player',
				'Game System' => 'Game System',
				'Camera' => 'Camera',
				'Stereo' => 'Stereo',
				'Other' => 'Other'
			)),
			new TextField('Item5Model'),
			new TextField('Item5Serial'),
			new TextField('Item5Value'),
			new DropdownField('Item6Type', 'Type', array(
				'Computer' => 'Computer',
				'MP3/CD Player' => 'MP3/CD Player',
				'Game System' => 'Game System',
				'Camera' => 'Camera',
				'Stereo' => 'Stereo',
				'Other' => 'Other'
			)),
			new TextField('Item6Model'),
			new TextField('Item6Serial'),
			new TextField('Item6Value'),
			new DropdownField('Item7Type', 'Type', array(
				'Computer' => 'Computer',
				'MP3/CD Player' => 'MP3/CD Player',
				'Game System' => 'Game System',
				'Camera' => 'Camera',
				'Stereo' => 'Stereo',
				'Other' => 'Other'
			)),
			new TextField('Item7Model'),
			new TextField('Item7Serial'),
			new TextField('Item7Value'),
			new DropdownField('Item8Type', 'Type', array(
				'Computer' => 'Computer',
				'MP3/CD Player' => 'MP3/CD Player',
				'Game System' => 'Game System',
				'Camera' => 'Camera',
				'Stereo' => 'Stereo',
				'Other' => 'Other'
			)),
			new TextField('Item8Model'),
			new TextField('Item8Serial'),
			new TextField('Item8Value'),
			new DropdownField('Item9Type', 'Type', array(
				'Computer' => 'Computer',
				'MP3/CD Player' => 'MP3/CD Player',
				'Game System' => 'Game System',
				'Camera' => 'Camera',
				'Stereo' => 'Stereo',
				'Other' => 'Other'
			)),
			new TextField('Item9Model'),
			new TextField('Item9Serial'),
			new TextField('Item9Value'),
			new DropdownField('Item10Type', 'Type', array(
				'Computer' => 'Computer',
				'MP3/CD Player' => 'MP3/CD Player',
				'Game System' => 'Game System',
				'Camera' => 'Camera',
				'Stereo' => 'Stereo',
				'Other' => 'Other'
			)),
			new TextField('Item10Model'),
			new TextField('Item10Serial'),
			new TextField('Item10Value')
		);
 		$actions = new FieldSet(
			new FormAction('doProjectIDForm', 'Register Your Items')
		);
		$myForm = new Form($this, 'ProjectIDForm', $fields, $actions);
		$myForm->disableSecurityToken();
		return $myForm;
	}
	function alternateForm($data,$form) {
		$submission = new ProjectIDSubmission();
		$form->saveInto($submission);
		$submission->write();
		Director::redirect(Director::baseURL(). $this->URLSegment . "/?success=1");
	}
	
	function doProjectIDForm($data,$form) {
		$submission = new ProjectIDSubmission();
		$form->saveInto($submission);
		$submission->write();
		#print_r($submission);
		
		$records = DataObject::get('ProjectIDSubmission', '', 'id DESC', '', '1');
			#$to = "kopf1988@gmail.com";
			$to = "police@uiowa.edu";
			$from = $data["Email"];
			$subject = "Project ID Submission";
			$email = new Email($from, $to, $subject);
			$email->setTemplate('MyEmail');
			$email->populateTemplate($data);
			$email->send();
		Director::redirect("http://police.uiowa.edu/services/project-id/?success=1");
	}
	public function Success() {
		return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
	}
	
	function show() {
		$mr = "id,type,date,date,name,address,email,type1,model1,serial1,value1,\n\n";
		$records = DataObject::get("ProjectIDSubmission");
		/*
		$rsQry = mysql_query ("select * from ProjectIDSubmission");
		$arrQry  = mysql_fetch_assoc($rsQry);
		//$record->custom_database_fields("ProjectIDSubmission")
		$num=mysql_numrows($rsQry);
		$i=0;
		while ($i < $num) {
			foreach ($arrQry as $field) {
				$mr = $mr . mysql_result($rsQry,$i,$field);//"," . $field;
			}
			$i++;
		}*/
		//$mr = $mr . ";<br />";
		
		//foreach ($records as $record) {
			//$rsQry = mysql_query ("select * from ProjectIDSubmission");
			//$arrQry  = mysql_fetch_assoc($rsQry);
			//$record->custom_database_fields("ProjectIDSubmission")
			//foreach ($arrQry as $field) {
				#$mr = $mr . "," . $field;
			//}
			//$mr = $mr . $record;
			//$mr = $mr . ";<br />";
		//}
		//CONCLUSION: PHP is evil.
		$rs = mysql_query ("select * from ProjectIDSubmission");
		$ar  = mysql_fetch_assoc($rs);
		while ( $row = mysql_fetch_array($rs) ) { 
			foreach ( $row AS $header ) {
				$mr = $mr . $header . ",";
			}
			foreach ( array_keys($row) AS $header ) {
				//$mr = $mr . $header;
			}
			$mr = $mr . "\n\n";
		}
		
		foreach ($records as $record) {
			//$mr = $mr . $record->name . "<br />";
		}
		return $mr;
	}
	
	public static $allowed_actions = array (
		'show' => 'CMS_ACCESS_CMSMain',
		'ProjectIDForm',
		'doProjectIDForm',
		'init'
	);

	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work
 
	}
}