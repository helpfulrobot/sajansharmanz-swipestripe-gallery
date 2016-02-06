<?php
/**
 * Swipestripe Responsive Bootstrap Gallery
 *
 * @package Swipestripe Bootstrap Gallery
 * @author Creative Gorillas (Sajan Sharma) - <sajansharmanz@gmail.com>
 *
 */
class Product_BootstrapGallery extends DataExtension {
	/**
	 * Using Requirements we will add all the CSS and Javascript Files
	 */
	public function onAfterInit() {
		// CSS Files
		Requirements::css('swipestripe-gallery/css/blueimp-gallery.min.css');
		Requirements::css('swipestripe-gallery/css/bootstrap-image-gallery.min.css');
		Requirements::css('swipestripe-gallery/css/bootstrap.min.css');
		Requirements::css('swipestripe-gallery/css/custom.css');

		// Javascript Files
		Requirements::javascript('swipestripe-gallery/javascript/jquery.min.js');
		Requirements::javascript('swipestripe-gallery/javascript/jquery.blueimp-gallery.min.js');
		Requirements::javascript('swipestripe-gallery/javascript/bootstrap-image-gallery.min.js');
		Requirements::javascript('swipestripe-gallery/javascript/bootstrap.min.js');
	}

}

class Product_Images extends DataObject {

	/**
	 * Database Fields for Images
	 *
	 * @var array
	 */
	private static $db = array(
		'ProductID' => 'Int',
		'PageID' => 'Int',
		'ImageID' => 'Int',
		'SortOrder' => 'Int'
	);
}