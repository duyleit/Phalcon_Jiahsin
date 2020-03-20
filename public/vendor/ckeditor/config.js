/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	 config.language = 'en';
	// config.uiColor = '#AADC6E';
    // config.toolbar_Full=[
     //    ['Link','Unlink','Anchor'],
     //    ['TextColor','BGColor'],
     //    ['Maximize','ShowBlocks','-','About']
    // ];
    // config.entities=false;

   //  config.filebrowserBrowseUrl = 'http://localhost/jiahsin/public/vendor/ckfinder/ckfinder.html';

    // config.filebrowserImageBrowseUrl = 'http://localhost/jiahsin/public/vendor/ckfinder/ckfinder.html?type=Images';

     config.filebrowserUploadUrl = 'http://localhost/jiahsin/public/vendor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Words';
    config.filebrowserImageUploadUrl = 'http://localhost/jiahsin/public/vendor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
   // config.filebrowserImageUploadUrl = 'http://localhost/public/vendor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images';
};
