/**
 * amptv
 *
 * Output Tv values to amp template
 *
 * @author  Nicola Lambathakis http://www.tattoocms.it/
 * @category	snippet
 * @internal	@modx_category ampx
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

/**
* amptv snippet: Output Tv values to amp template
[[amptv? &tv=`download`]]
output tv using modx tv widget output
[[amptv? &tv=`download` &widget=`1`]]
**/
if (isset($_GET['ampid'])){
$id=$modx->db->escape($_GET['ampid']);
$widget = (isset($widget)) ? $widget : 0;
$output = '';
if(isset($widget) && 1==$widget){
        $getTv = $modx->getTemplateVarOutput($tv,$id);
        $output = $getTv[$tv];
    }else{
        $getTv = $modx->getTemplateVar($tv,'*',$id);
        $output = ($getTv['value']!='') ? $getTv['value'] : $getTv['defaultText'];
    }
/**out**/
return $output;
}
