/**
 * ampx
 *
 * Accelerated Mobile Pages for Evo
 *
* @version  Beta 1.0
 * @author  Nicola Lambathakis http://www.tattoocms.it/
 * @category	snippet
 * @internal	@modx_category ampx
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

/* add inside the head tag of your template (where 57 is the resource containing ampx snippet call)
	<link rel="amphtml" href="[(site_url)][~57~]&ampid=[*id*]" />
*/	
	
$tpl = (isset($tpl)) ? $tpl : 'amp-Template';
$imageTv = isset($imageTv) ? $imageTv : 'Thumbnail';
 
$content['content']='<p>no document was given to generate AMP html page</p>';
if (isset($_GET['ampid'])){
//add here modx resource placeholder
$id=$modx->db->escape($_GET['ampid']);
$content = $modx->getPageInfo($id,1,'content'); 
$title = $modx->getPageInfo($id,1,'pagetitle'); 
$longtitle = $modx->getPageInfo($id,1,'longtitle'); 
$description = $modx->getPageInfo($id,1,'description'); 
$introtext = $modx->getPageInfo($id,1,'introtext'); 

//get datePublished from publishedon
$publishedon = $modx->getPageInfo($id,1,'publishedon'); 
$datePublished = date(r,$publishedon['publishedon']);

//get canonical url from page
$canonicalurl = $modx->makeUrl($id, '', '', 'full');	

//get image tv
$getimage = $modx->getTemplateVarOutput($imageTv,$id);
$imagetvar = $getimage[$imageTv];
}

//parse chunk placeholders
$values = array('canonicalurl' => $canonicalurl, 'ampcontent' => $content['content'], 'amplongtitle' => $longtitle['longtitle'], 'ampdescription' => $description['description'], 'ampintrotext' => $introtext['introtext'],'ampimage' => $imagetvar, 'datePublished' => $datePublished);
$output =  $output . $modx->parseChunk($tpl, $values, '[+', '+]');
 
return $output;
