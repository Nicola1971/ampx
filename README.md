# [THIS PROJECT IS DEPRECATED] 

# ampx Beta 1.0.7
Accelerated Mobile Pages (AMP) for  MODX Evolution

http://www.tattoocms.it/extras/snippets/ampx-accelerated-mobile-pages-amp-for-modx-evo.html

# Installation 

### Step 1) install with Packagemanager 

### Step 2) Create a new resource: 

* template amp-blank
* richtext: no
* content: [!ampx!]
* pagetitle: amp

### Step 3) Add to the HEAD tag of your Template a link the AMP version

```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]" />```

#### you can pass tpl parameter via URL:
 ```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]&tpl=amp-Template-Home" />```
 
```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]&tpl=amp-Template-Container" />```
####  or use with If snippet:
```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*][[if? &is=`[*id*]:=:1` &then=`&tpl=amp-Template-Home`]]" />``` 

 ```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*][[if? &is=`[*isfolder*]:is:1` &then=`&tpl=amp-Template-Container`]]" />```
### use If snippet to add AMP only to certain resources

* add AMP to children of Resource 3
* use Amp-Template-Container for resource id 4,67,70,104,159
* use default template for any other resource inside id 3

```[[if? &is=`[*parent*]:in:3` &then=`[[if? &is=`[*id*]:in:4,67,70,104,159` &then=`<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]&tpl=amp-Template-Container" />` &else=`<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]" />`]]` &else=``]]```

IMPORTANT: Replace 57 with the ID of resource created at Step 2


Issue:

1) validation error with any active plugins that loads something (like js to the page code) with OnWebPagePrerender

#Updates:

# Beta 1.0.7

* parent placeholder (get parent id from document)

# Beta 1.0.6: 

* added noimage parameter
* added striphtmlattributes from content (with simple_html_dom) to remove tinymce style attributes

# Beta 1.0.5: 

* added amptv snippet: https://github.com/Nicola1971/ampx/issues/5
* added ampPagination snippet https://github.com/Nicola1971/ampx/issues/4

# Beta 1.0.4: 

* changed author: fullname instead username
* added dateModified from editedon
* Better structured data
* amp-Template validation for amp and structured data
* Social Share chunk https://github.com/Nicola1971/ampx/issues/3

# Beta 1.0.3: 

* Sidebar navigation based on wayfinder

# Beta 1.0.2: 

* Support for Homepage and Containers (category) pages
* now, you can pass tpl parameter to url
* new templates for Home and Containers
* ditto tpl
* more placeholders

# Beta 1.0.1: 

* added snippet folder
* image sanitize
* new template
* added author placeholder

# Beta 1: 

* first commit
