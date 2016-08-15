/**
 * amp-Template-css
 *
 * inline styles for amp-template
 *
 * @category	chunk
 * @internal @modx_category ampx
 */
/* Generic styling */
.alignright { float: right; }
.alignleft { float: left; }
.aligncenter { display: block; margin-left: auto; margin-right: auto; }
.clear { clear: both; }


/* Template Styles */
.ampx-content, .amp-wp-title-bar div {
	max-width: 900px;
	margin: 0 auto;
}

body {
	font-family: 'Merriweather', Serif;
	font-size: 16px;
	line-height: 1.8;
	background: #fff;
	color: #3d596d;
	padding-bottom: 0px;
}

.ampx-content {
	padding: 16px;
	overflow-wrap: break-word;
	word-wrap: break-word;
	font-weight: 400;
	color: #3d596d;
}

.ampx-title {
	margin: 36px 0 0 0;
	font-size: 36px;
	line-height: 1.258;
	font-weight: 700;
	color: #2e4453;
}
.ampx-title a{
text-decoration:none;
}

.ampx-meta {
	margin: 10px 0 16px 0;
}

p,
ol,
ul,
figure {
	margin: 0 0 24px 0;
}

a,
a:visited {
	color: #0087be;
}

a:hover,
a:active,
a:focus {
	color: #33bbe3;
}

.ampx-footer {
	background: #e9eff3;
	padding: 20px 16px;
text-align:center
}
.ampx-footer a {color: #499bea;	text-decoration: none;}
.ampx-footer a:hover{color: #3d596d;text-decoration: none;}

nav.ampx-title-bar {background: #499bea;padding: 0 16px;}

nav.ampx-title-bar div {
background: #499bea;
	line-height: 54px;
	color: #fff;
}

nav.ampx-title-bar a {
	color: #fff;
	text-decoration: none;
}

nav.ampx-title-bar .ampx-site-icon {
	/** site icon is 32px **/
	float: left;
	margin: 12px 8px 0 0;
	border-radius: 50%;
}
.ampx-meta {
	background: #e9eff3;
	padding: 5px;
	color: #4f748e;
}
.ampx-meta a {
	color: #4f748e;
}

/* Quotes */
blockquote {
	padding: 16px;
	margin: 8px 0 24px 0;
	border-left: 2px solid #87a6bc;
	color: #4f748e;
	background: #e9eff3;
}

blockquote p:last-child {
	margin-bottom: 0;
}

/* Other Elements */
amp-carousel {
	background: #000;
}

amp-iframe,
amp-youtube,
amp-instagram,
amp-vine {
	background: #f3f6f8;
}

amp-carousel > amp-img > img {
	object-fit: contain;
}

.ampx-iframe-placeholder {
	background: #f3f6f8 url( ) no-repeat center 40%;
	background-size: 48px 48px;
	min-height: 48px;
}