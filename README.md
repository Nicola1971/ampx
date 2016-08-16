# ampx Beta 1
Accelerated Mobile Pages (AMP) for  MODX Evolution


# Installation 

### Step 1) install with Packagemanager 

### Step 2) Create a new resource: 

* template amp-blank
* richtext: no
* content: [!ampx!]
* pagetitle: amp

### Step 3) Add to the HEAD tag of your Template a link the AMP version

```<link rel="amphtml" href="[(site_url)][~57~]?id=[*id*]" />```

#### you can pass tpl parameter via URL:
 ```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]&tpl=amp-Template-Home" />```
 
```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*]&tpl=amp-Template-Container" />```
####  or use with If snippet:
```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*][[if? &is=`[*id*]:=:1` &then=`&tpl=amp-Template-Home`]]" />``` 

 ```<link rel="amphtml" href="[(site_url)][~57~]?ampid=[*id*][[if? &is=`[*isfolder*]:is:1` &then=`&tpl=amp-Template-Container`]]" />```


IMPORTANT: Replace 57 with the ID of resource created at Step 2


Issue:

1) validation error with any active plugins that loads something (like js to the page code) with OnWebPagePrerender

#Updates:

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
