/**
 * ampx
 *
 * Accelerated Mobile Pages for Evo
 *
* @version  Beta 1.0.1
 * @author  Nicola Lambathakis http://www.tattoocms.it/
 * @category	snippet
 * @internal	@modx_category ampx
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

<?php
/* add inside the head tag of your template (where 57 is the resource containing ampx snippet call)
<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]" />
*/	
$tpl = (isset($tpl)) ? $tpl : 'amp-Template';
$imageTv = isset($imageTv) ? $imageTv : 'Thumbnail';

DEFINE('AMP__DIR__', 'assets/snippets/ampx/');
require_once( AMP__DIR__ . 'includes/class-amp-post-template.php' );

$cleancontent ='<h1> ampx Error</h1><p>No document was given to generate AMP html page.<br/> Missing value for ampid parameter</p>';
if (isset($_GET['ampid'])){
	
//get resource id
$id=$modx->db->escape($_GET['ampid']);

//add modx resource placeholder
$title = $modx->getPageInfo($id,1,'pagetitle'); 
$longtitle = $modx->getPageInfo($id,1,'longtitle'); 
$description = $modx->getPageInfo($id,1,'description'); 
$introtext = $modx->getPageInfo($id,1,'introtext'); 
	
//get content and sanitize images 	
$sourcecontent = $modx->getPageInfo($id,1,'content'); 
$ampContent = new AMP_Content($sourcecontent['content'], array(), array('AMP_Img_Sanitizer' => array()), array());
$content = $ampContent->get_amp_content();
$cleancontent = strip_tags($content, '<p><a><h1><h2><h3><h4><h5><b><strong><ol><ul><li><code><pre><amp-img>');

//get datePublished from publishedon
$publishedon = $modx->getPageInfo($id,1,'publishedon'); 
$datePublished = date(r,$publishedon['publishedon']);

//get canonical url from page
$canonicalurl = $modx->makeUrl($id, '', '', 'full');	

//get image tv
$getimage = $modx->getTemplateVarOutput($imageTv,$id);
$imagetvar = $getimage[$imageTv];


//get author
$createdby = $modx->getPageInfo($id,1,'createdby'); 
$user_info = $modx->getUserInfo($createdby['createdby']);
$author = $user_info['username'];
}

//parse chunk placeholders
$values = array('ampid' => $id, 'canonicalurl' => $canonicalurl, 'ampcontent' => $cleancontent, 'amplongtitle' => $longtitle['longtitle'], 'ampdescription' => $description['description'], 'ampintrotext' => $introtext['introtext'],'ampimage' => $imagetvar, 'datePublished' => $datePublished, 'author' => $author);
$output =  $output . $modx->parseChunk($tpl, $values, '[+', '+]');

return $output;
?>