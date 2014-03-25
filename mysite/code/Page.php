<?php
class Page extends SiteTree {

	private static $db = array(
		"GoogleMapURL" => "Text",
		"Summary" => "HTMLText",
		
	);

	private static $has_one = array(
		"PreviewImage" => "Image"
	);
	
	
	function getCMSFields() { 
	
		$fields = parent::getCMSFields();
		
		//$fields->addFieldToTab('Root.GoogleMaps', new TextField('GoogleMapURL','Google Map URL'));
		$fields->addFieldToTab('Root.Main', new HtmlEditorField('Summary','Summary for Info Page'));
		$fields->addFieldToTab('Root.Main', new UploadField('PreviewImage','Image Preview for Info Page'));
		
		return $fields;
	}

}
class Page_Controller extends ContentController {

	/*
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
	private static $allowed_actions = array ("SearchForm"
	);
	public function init() {
		parent::init();

		// Note: you should use SS template require tags inside your templates 
		// instead of putting Requirements calls here.  However these are 
		// included so that our older themes still work

	}
	
	function latestBlogEntries($number=6) {    
      	return BlogEntry::get()->sort('Date', 'DESC')->limit($number); 
	}
	
	function RSSFeed($limit,$feedURL="http://open.dapper.net/services/iccrimestoppers") {
			
		  $output = new ArrayList();
		  
		  include_once(Director::getAbsFile(FRAMEWORK_DIR . '/thirdparty/simplepie/simplepie.inc'));
		  
		  $t1 = microtime(true);
		  $feed = new SimplePie($feedURL, TEMP_FOLDER);
		  $feed->init();
		  if($items = $feed->get_items(0, $limit)) {
			 foreach($items as $item) {
				
				// Cast the Date
				$date = new Date('Date');
				$date->setValue($item->get_date());
		
				// Cast the Title
				$title = new Text('Title');
				$title->setValue($item->get_title());
				
				// Cast the description and strip
				$desc = new Text('Description');
				$desc->setValue(html_entity_decode($item->get_description()));
		
				$output->push(new ArrayData(array(
				   'Title'         => $title,
				   'Date'         => $date,
				   'Link'         => $item->get_link(),
				   'Description'   => $desc
				)));
			 }
			 return $output;
		  }
	}
	
   function SearchForm() {
      $searchText = isset($this->Query) ? $this->Query : 'Search';
 
      $fields = new FieldList(
         new TextField("Search", "", $searchText)
      );
 
      $actions = new FieldList(
         new FormAction('results', 'Go')
      );
 
      return new SearchForm($this, "SearchForm", $fields, $actions);
   }
	
	function Siblings(){

	$siblings = Page::get()->filter(array('ParentID' => $this->getParent()->ID));
		if($siblings){
			return $siblings;
		}else{
			return null;
		}
		return false;
	}
	
	function results($data, $form){
      $data = array(
         'Results' => $form->getResults(),
         'Query' => $form->getSearchQuery(),
         'Title' => 'Search Results'
      );
      $this->Query = $form->getSearchQuery();
 
      return $this->customise($data)->renderWith(array('Page_results', 'Page'));
	}
	function EditURL() {
		return "/admin/show/".$this->ID."/";
	}
	
}