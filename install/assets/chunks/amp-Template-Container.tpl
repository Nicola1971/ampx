/**
 * amp-Template-Container
 *
 * AMP (Accelerated Mobile Pages) Template for AMPx
 *
 * @category	chunk
 * @internal @modx_category ampx
 */
<!doctype html>
<html AMP lang="en" itemscope itemtype="http://schema.org/NewsArticle" itemid="[+canonicalurl+]"/>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
	<title>[+amptitle+]</title>
    <link itemprop="mainEntityOfPage" rel="canonical" href="[+canonicalurl+]" />
	<link href='https://fonts.googleapis.com/css?family=Merriweather:400,400italic,700italic' rel='stylesheet' type='text/css'>
    <script type="application/ld+json">
{
"@context": "http://schema.org",
  "@type": "NewsArticle",
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "[+canonicalurl+]"
  },
  "headline": "[+amplongtitle+]",
  "image": {
    "@type": "ImageObject",
    "url": "[(site_url)][+ampimage+]",
    "height": 2000,
    "width": 800
  },
  "datePublished": "[+datePublished+]",
  "dateModified": "[+dateModified+]",
  "author": {
    "@type": "Person",
    "name": "[+author+]"
  },
  "publisher": {
    "@type": "Organization",
    "name": "[(site_name)]",
    "logo": {
      "@type": "ImageObject",
      "url": "[(site_url)]assets/images/logo-tattoo-amp.png",
      "width": 600,
      "height": 60
    }
  },
  "description": "[+ampdescription+]"
}
    </script>
    <style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style><noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
    <script async src="https://cdn.ampproject.org/v0.js"></script>
	<script async custom-element="amp-sidebar" src="https://cdn.ampproject.org/v0/amp-sidebar-0.1.js"></script>
	<style amp-custom>
 {{amp-Template-css}}
	</style>
</head>
<body>
<nav class="ampx-title-bar">
<div itemprop="publisher" itemscope itemtype="https://schema.org/Organization">
{{amp-Titlebar}}
<meta itemprop="name" content="[(site_name)]">
<div class="alignright togglesidebar">
	<amp-img class='toggle' src="assets/snippets/ampx/images/toggle.png" width="32" height="32" alt="toggle" on="tap:sidebar.toggle" role="button" tabindex="0"></amp-img>	
</div>	
	</div>
</nav>
<div class="ampx-content">
	<h1 itemprop="headline" class="ampx-title"><a href="[+canonicalurl+]">[+amplongtitle+]</a></h1>
	<h3>[+ampdescription+]</h3>
[[Ditto?  &parents=`[+ampid+]` &display=`5` &hideFolders=`1` &showInMenuOnly=`1` &depth=`2` &sortBy=`editedon` &sortDir=`DESC` &removeChunk=`Comments` &tpl=`amp-ditto-blog` &paginate=`1` &extenders=`summary,dateFilter` &paginateAlwaysShowLinks=`0`]]
[[ampPagination? &pagesToShow=`10` &constantEndCount=`3` &return=`1`]]

</div>
<div class="ampx-footer">
<p>
{{amp-Footer}}
<a href="[+canonicalurl+]">[switch to default view]</a> 
</p>
</div>
{{amp-sidebar}}
</body>
</html>