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

<!doctype html>
<html amp>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no">
	<title>[+amplongtitle+]</title>
    <link rel="canonical" href="[+canonicalurl+]" />
	<link href='https://fonts.googleapis.com/css?family=Merriweather:400,400italic,700italic' rel='stylesheet' type='text/css'>
    <script type="application/ld+json">
      {
        "@context": "http://schema.org",
        "@type": "NewsArticle",
        "headline": "[+amplongtitle+]",
        "datePublished": "[+datePublished+]",
        "image": [
          "[+ampimage+]"
        ]
      }
    </script>
    <style amp-boilerplate>body{-webkit-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-moz-animation:-amp-start 8s steps(1,end) 0s 1 normal both;-ms-animation:-amp-start 8s steps(1,end) 0s 1 normal both;animation:-amp-start 8s steps(1,end) 0s 1 normal both}@-webkit-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-moz-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-ms-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@-o-keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}@keyframes -amp-start{from{visibility:hidden}to{visibility:visible}}</style><noscript><style amp-boilerplate>body{-webkit-animation:none;-moz-animation:none;-ms-animation:none;animation:none}</style></noscript>
    <script async src="https://cdn.ampproject.org/v0.js"></script>

	<style amp-custom>
 {{amp-Template-css}}
	</style>
</head>
<body>
<nav class="ampx-title-bar">
	<div>
		<a href="[(site_url)]"> <amp-img src="[(site_url)]assets/images/logo.png" width="32" height="32" class="ampx-site-icon"></amp-img>
			[(site_name)]
		</a>
	</div>
</nav>
<div class="ampx-content">
	<amp-img src="[+ampimage+]" width="2264" height="1000" layout="responsive"></amp-img>
	<h1 class="ampx-title"><a href="[+canonicalurl+]">[+amplongtitle+]</a></h1>
	<div class="ampx-meta">
	 by [+author+] | Comments ([[Jot?&docid=`[*id*]`&action=`count-comments` &css=`0`]]) |  [+datePublished+]
    </div>
	[+ampcontent+]
</div>
<div class="ampx-footer">
<p> <a href="http://www.tattoocms.it/" title="AMPx Accelerated Mobile Pages for MODX Evolution">Powered
          by AMPx <br/>Accelerated Mobile Pages for MODX Evolution</a><br />
</p>	
</div>
</body>
</html>