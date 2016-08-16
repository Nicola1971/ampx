/**
 * amp-Template
 *
 * AMP (Accelerated Mobile Pages) Template for AMPx
 *
 * @category	chunk
 * @internal @modx_category ampx
 */
	<title>[+amplongtitle+]</title>
    <link itemprop="mainEntityOfPage" rel="canonical" href="[+canonicalurl+]" />
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
	<div itemprop="image" itemscope itemtype="https://schema.org/ImageObject">
	<amp-img src="[+ampimage+]" width="2000" height="800" layout="responsive"></amp-img>
	<meta itemprop="url" content="[+ampimage+]"></meta>
    <meta itemprop="width" content="2000"></meta>
    <meta itemprop="height" content="800"></meta>
    </div>
	<h1 itemprop="headline" class="ampx-title"><a href="[+canonicalurl+]">[+amplongtitle+]</a></h1>
	<div class="ampx-meta">
		by <span itemprop="author" itemscope itemtype="https://schema.org/Person"> <span itemprop="name">[+author+]</span></span> | Comments ([[Jot?&docid=`[*id*]`&action=`count-comments` &css=`0`]]) | <time itemprop="datePublished" datetime="1907-05-05T12:02:41Z"> [+datePublished+]</time>
    </div>
	[+ampcontent+]
</div>
<div class="ampx-footer">
<p> <a href="http://www.tattoocms.it/" title="AMPx Accelerated Mobile Pages for MODX Evolution">Powered
          by AMPx</a> <br/>Accelerated Mobile Pages for MODX Evolution<br />
	<a href="[+canonicalurl+]">[switch to default view]</a>
</p>
</div>
</body>
</html>