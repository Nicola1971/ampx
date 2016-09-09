/**
 * ampx
 *
 * Accelerated Mobile Pages for Evo - Beta 1.0.6
 *
* @version  Beta 1.0.6
 * @author  Nicola Lambathakis http://www.tattoocms.it/
 * @category	snippet
 * @internal	@modx_category ampx
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

<?php
/* add to the head tag of your template (where 57 is the resource containing ampx snippet call)
 * <link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]" />
 *  you can pass tpl parameter via URL:
 *  <link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]&tpl=amp-Template-Home" />
*/	
$tpl = isset($_GET['tpl']) ? $_GET['tpl'] : 'amp-Template';
$imageTv = isset($imageTv) ? $imageTv : 'Thumbnail';
$noimage = isset($noimage) ? $noimage : 'assets/snippets/ampx/images/noimage.png';

DEFINE('AMP__DIR__', 'assets/snippets/ampx/');
require_once( AMP__DIR__ . 'includes/class-amp-post-template.php' );
require_once( AMP__DIR__ . 'simple_html_dom.php' );
$cleancontent ='<h1> ampx Error</h1><p>No document was given to generate AMP html page.<br/> Missing value for ampid parameter</p>';
if (isset($_GET['ampid'])){
	
//get resource id
$id=$modx->db->escape($_GET['ampid']);

//get modx resource placeholder 
$title = $modx->getPageInfo($id,1,'pagetitle'); 
$longtitle = $modx->getPageInfo($id,1,'longtitle'); 
$menutitle = $modx->getPageInfo($id,1,'menutitle');
$description = $modx->getPageInfo($id,1,'description'); 
$introtext = $modx->getPageInfo($id,1,'introtext'); 
	
//get content, sanitize images and strip html tags
$sourcecontent = $modx->getPageInfo($id,1,'content'); 
$ampContent = new AMP_Content($sourcecontent['content'], array(), array('AMP_Img_Sanitizer' => array()), array());
$content = $ampContent->get_amp_content();
$strip_tagscontent = strip_tags($content, '<p><a><h1><h2><h3><h4><h5><b><strong><ol><ul><li><code><pre><amp-img><table><tr><td>');
//strip html attributes (timymce editor)
function stripAttributes($strip_tagscontent,$attribs) {
    $dom = new simple_html_dom();
    $dom->load($strip_tagscontent);
    foreach($attribs as $attrib)
        foreach($dom->find("*[$attrib]") as $e)
            $e->$attrib = null; 
    $dom->load($dom->save());
    return $dom->save();
}
$attribs = array(
	"style" => "style",
	"class" => "class",
	"align" => "align",
);
$cleancontent = stripAttributes($strip_tagscontent,$attribs);

//get datePublished from publishedon
//setlocale ( LC_ALL , "it_IT" ); 
$publishedon = $modx->getPageInfo($id,1,'publishedon'); 
$datePublished = date(r,$publishedon['publishedon']);
//get dateModified from editedon
$editedon = $modx->getPageInfo($id,1,'editedon'); 
$dateModified = date(r,$editedon['editedon']);

//get canonical url from page
$canonicalurl = $modx->makeUrl($id, '', '', 'full');	

//get image tv
$getimage = $modx->getTemplateVarOutput($imageTv,$id);
$imagetvar = $getimage[$imageTv];
if (empty($imagetvar)) {
   $mainimage = $noimage; //default image if tv is empty
}
	else {
$mainimage = $imagetvar;
	}

//get author
$createdby = $modx->getPageInfo($id,1,'createdby'); 
$user_info = $modx->getUserInfo($createdby['createdby']);
$author = $user_info['fullname'];

}

//parse chunk placeholders
$values = array('ampid' => $id, 'canonicalurl' => $canonicalurl, 'ampcontent' => $cleancontent, 'amplongtitle' => $longtitle['longtitle'], 'amptitle' => $title['pagetitle'], 'ampmenutitle' => $menutitle['menutitle'], 'ampdescription' => $description['description'], 'ampintrotext' => $introtext['introtext'],'ampimage' => $mainimage, 'datePublished' => $datePublished, 'dateModified' => $dateModified, 'author' => $author);
$output =  $output . $modx->parseChunk($tpl, $values, '[+', '+]');

return $output;
?>