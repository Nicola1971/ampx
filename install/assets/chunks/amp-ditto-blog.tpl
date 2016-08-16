/**
 * amp-ditto-blog
 *
 * Ditto Blog Chunk Template for AMPx
 *
 * @category	chunk
 * @internal @modx_category ampx
 */
<div class="ampx-item-blog">
	<a href="[(site_url)][~[*id*]~]?ampid=[+id+]" title="[+title+]">
<figure>
    <amp-img src="[[phpthumb? &input=`[+Thumbnail+]` &options=`w=1400,h=672,zc=TL`]]"
     class="img-blog"    
      width=1280
      height=768
      layout=responsive></amp-img>
 </figure></a> 
 <a href="[(site_url)][~[*id*]~]?ampid=[+id+]" title="[+title+]"><h2>[+title+]</h2></a>      
			
                            <div class="entry-meta"> 
							[+editedon:date=`%d/%m/%Y`+] | by [+author+]
                            <p>[+summary+]</p>
                            <a class="btn btn-default" href="[(site_url)][~[*id*]~]?ampid=[+id+]">Read More </a>
                        </div>
</div>