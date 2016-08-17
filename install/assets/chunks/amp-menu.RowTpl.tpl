/**
 * amp-menu.RowTpl
 *
 * amp-menu.RowTpl
 *
 * @category	chunk
 * @internal @modx_category ampx
 */
<li [+wf.classes+]><a href="[(site_url)][~[*id*]~]?ampid=[+id+][[if? &is=`[+id+]:=:1` &then=`&tpl=amp-Template-Home` &else=`&tpl=amp-Template-Container`]]" title="[+wf.title+]">[+wf.linktext+]</a>[+wf.wrapper+]</li>