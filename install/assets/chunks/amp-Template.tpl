/**
 * amp-Template
 *
 * AMP (Accelerated Mobile Pages) Template for AMPx
 *
 * @category	chunk
 * @internal @modx_category ampx
 */
<!doctype html>
<html amp lang="en">
  <head>
    <meta charset="utf-8">
    <title>[+amplongtitle+]</title>
    <link rel="canonical" href="[+canonicalurl+]" />
    <meta name="viewport" content="width=device-width,minimum-scale=1,initial-scale=1">
	 <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,400italic|Libre+Baskerville" rel="stylesheet" type="text/css">
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
<!---custom styles--->
<style amp-custom>
body {
  font-family: 'Open Sans', sans-serif;
  font-size: 1rem;
  line-height: 2;
  color: #838C95;
}
.amp_header {
	padding: 0 2rem;
	text-align: center;
}
h1.amp_header_title {
  font: bold 3.5rem/1.1em 'Open Sans', sans-serif;
  color: #499bea;
  letter-spacing: -0.125rem;
  margin: 0 auto 0 auto;
  text-shadow: 0 0.0625rem 0.1875rem rgba(0, 0, 0, .8);
}
@media (max-width: 35rem){
  h1.amp_header_title {
    font-size: 12vw;
  }
}
p.amp_descriptiontext {
  font-family: 'Libre Baskerville';
  line-height: 1.9;
  color: #FF7F42;
  margin: 1rem auto;
  width: 70%;
  text-shadow: 0 0.0625rem 0.125rem rgba(0, 0, 0, .5);
  border-color: rgba(255, 255, 255, .1);
  text-align: center;
}
.amp_content {
  margin: 0 auto 2rem auto;
		padding: 2rem 4rem;
}
.amp_main_image {
margin: 0 2rem;
border: 1px solid #ffd342;
box-shadow: 0 0.0625rem 0.125rem rgba(0, 0, 0, .5);
}
		  </style>
  </head>
  <body>

<div class="amp_header">
<h1 class="amp_header_title">[+amplongtitle+]</h1>
<p class="amp_descriptiontext">[+ampintrotext+]</p>
	  </div>
<div class="amp_main_image">
<amp-img src="[+ampimage+]" width="2264" height="804" layout="responsive"></amp-img>
</div>
<div class="amp_content">
 [+ampcontent+]
</div>
  </body>

</html>