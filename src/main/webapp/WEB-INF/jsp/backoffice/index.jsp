<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<link rel="stylesheet" href="resources/aui/css/aui.min.css" media="all">
<link rel="stylesheet" href="resources/aui/css/aui-experimental.min.css" media="all">
<script src="resources/aui/js/aui.min.js"></script>
<script src="resources/aui/js/aui-experimental.min.js"></script>
<script src="resources/aui/js/aui-soy.min.js"></script>
</head>
<body>
<body class="aui-page-sidebar aui-sidebar-expanded"><!-- For a normal page, omit all 'aui-page-' classes here -->
    <div id="page">
      <header id="header" role="banner">
      
  
  


      <nav class="aui-header aui-dropdown2-trigger-group" role="navigation" data-aui-responsive="true">
        <div class="aui-header-inner">
        <div class="aui-header-primary">
          
  

          
            <h1 class="aui-header-logo aui-header-logo-bitbucket logged-out" id="logo">
              <a href="/" title="( type g then d )">
                <span class="aui-header-logo-device">Bitbucket</span>
              </a>
            </h1>
          
          
  
<script id="repo-dropdown-template" type="text/html">
    

[[#hasViewed]]
  <div class="aui-dropdown2-section">
    <strong class="viewed">Recently viewed</strong>
    <ul class="aui-list-truncate">
      [[#viewed]]
        <li class="[[#is_private]]private[[/is_private]][[^is_private]]public[[/is_private]] repository">
          <a href="[[url]]" title="[[owner]]/[[name]]" class="aui-icon-container recently-viewed repo-link">
            <img class="repo-avatar size16" src="[[{avatar}]]" alt="[[owner]]/[[name]] avatar"/>
            [[owner]] / [[name]]
          </a>
        </li>
      [[/viewed]]
    </ul>
  </div>
[[/hasViewed]]
[[#hasUpdated]]
<div class="aui-dropdown2-section">
  <strong class="updated">Recently updated</strong>
  <ul class="aui-list-truncate">
    [[#updated]]
    <li class="[[#is_private]]private[[/is_private]][[^is_private]]public[[/is_private]] repository">
      <a href="[[url]]" title="[[owner]]/[[name]]" class="aui-icon-container recently-updated repo-link">
        <img class="repo-avatar size16" src="[[{avatar}]]" alt="[[owner]]/[[name]] avatar"/>
        [[owner]] / [[name]]
      </a>
    </li>
    [[/updated]]
  </ul>
</div>
[[/hasUpdated]]

  </script>
<script id="snippet-dropdown-template" type="text/html">
    <div class="aui-dropdown2-section">
  <strong>[[sectionTitle]]</strong>
  <ul class="aui-list-truncate">
    [[#snippets]]
      <li>
        <a href="[[links.html.href]]">[[owner.display_name]] / [[name]]</a>
      </li>
    [[/snippets]]
  </ul>
</div>

  </script>
<ul class="aui-nav" style="width: auto;" resolved="">
  
    <li>
      <a href="/features">
        Features
      </a>
    </li>
    <li>
      <a href="/plans">
          Pricing
      </a>
    </li>
  
</ul>

        </div>
        <div class="aui-header-secondary">
          
  

<ul role="menu" class="aui-nav" resolved="">
  
  <li>
    <form action="/repo/all" method="get" class="aui-quicksearch">
      <label for="search-query" class="assistive">owner/repository</label>
      <input id="search-query" class="bb-repo-typeahead" type="text" placeholder="Find a repository…" name="name" autocomplete="off" data-bb-typeahead-focus="false" title="( type / )">
    </form>
  </li>
  <li id="ace-stp-menu">
    <a id="ace-stp-menu-link" class="aui-nav-link" href="#" aria-controls="super-touch-point-dialog" data-modules="aui/inline-dialog2" data-aui-trigger="" resolved="" aria-expanded="false" aria-haspopup="true">
  <span id="ace-stp-menu-icon" class="aui-icon aui-icon-small aui-iconfont-help"></span>
  <div id="ace-stp-menu-icon-notification"></div>
</a>
  </li>
  
    
      <li>
        <a class="aui-dropdown2-trigger aui-alignment-target aui-alignment-element-attached-top aui-alignment-element-attached-right aui-alignment-target-attached-bottom aui-alignment-target-attached-right" href="#" aria-controls="header-language" aria-owns="header-language" aria-haspopup="true" data-container="#header .aui-header-inner" aria-expanded="false" resolved="">
          <span>English</span></a>
        
      <nav id="header-language" class="aui-dropdown2 aui-style-default aui-dropdown2-radio aui-dropdown2-in-header aui-layer aui-alignment-element aui-alignment-side-bottom aui-alignment-snap-right aui-alignment-element-attached-top aui-alignment-element-attached-right aui-alignment-target-attached-bottom aui-alignment-target-attached-right" aria-hidden="true" resolved="" aria-checked="false" tabindex="0" role="radio" data-aui-alignment="bottom auto" data-aui-alignment-static="true" style="z-index: 3000; top: 0px; left: 0px; position: absolute; transform: translateX(1361px) translateY(40px) translateZ(0px);">
          <form method="post" action="/account/language/setlang/" data-modules="i18n/header-language-form">
            <input type="hidden" name="language" value="">
            <ul>
            <li><a class="aui-dropdown2-radio interactive checked" data-value="en" href="#en" aria-checked="true" tabindex="0" role="radio" resolved="">English</a></li>
            
            <li><a class="aui-dropdown2-radio interactive" data-value="ja" href="#ja" aria-checked="false" tabindex="0" role="radio" resolved="">日本語</a></li>
            </ul>
          </form>
        </nav></li>
    
  
  
      <li id="header-signup-button">
        <a id="sign-up-link" class="aui-button aui-button-primary" href="/account/signup/">
          Sign up
        </a>
      </li>
    <li id="user-options">
      <a href="/account/signin/?next=/atlassian/aui-adg" class="aui-nav-link login-link">Log in</a>
    </li>
  
</ul>

        </div>
      </div>
      </nav>
    </header>
      <div id="content" role="main">
      
  

<div class="aui-sidebar repo-sidebar" data-modules="components/repo-sidebar,experiment/grow1279-guide" aria-expanded="true">
  <div class="aui-sidebar-wrapper" style="height: 420px;">
    <div class="aui-sidebar-body">
      <header class="aui-page-header">
        <div class="aui-page-header-inner">
          <div class="aui-page-header-image">
            <a href="/atlassian/aui-adg" id="repo-avatar-link" class="repo-link">
              <span class="aui-avatar aui-avatar-large aui-avatar-project">
                <span class="aui-avatar-inner">
                  <img src="https://bitbucket.org/atlassian/aui-adg/avatar/128/?ts=1438844404" class="" data-src-url="https://bitbucket.org/atlassian/aui-adg/avatar/64/?ts=1438844404" data-src-url-2x="https://bitbucket.org/atlassian/aui-adg/avatar/128/?ts=1438844404" alt="">
                </span>
              </span>
            </a>
          </div>
          <div class="aui-page-header-main">
            <ol class="aui-nav aui-nav-breadcrumbs" resolved="">
              <li>
                <a href="/atlassian/" id="repo-owner-link">atlassian</a>
              </li>
            </ol>
            <h1>
              
              <a href="/atlassian/aui-adg" title="aui-adg" class="entity-name">aui-adg</a>
            </h1>
          </div>
        </div>
      </header>
      <nav class="aui-navgroup aui-navgroup-vertical">
        <div class="aui-navgroup-inner">
          
            
              <div class="aui-sidebar-group aui-sidebar-group-actions repository-actions forks-enabled aui-alignment-target" aria-controls="sidebar-submenu0" data-aui-trigger="" resolved="" aria-expanded="false" aria-haspopup="true">
                <div class="aui-nav-heading">
                  <strong>Actions</strong>
                </div>
                <ul id="repo-actions" class="aui-nav" resolved="">
                  
                  
                    <li>
                      <a id="repo-clone-button" class="aui-nav-item " href="#clone" data-ct="sidebar.actions.repository.clone" data-ct-data="" data-modules="components/clone/clone-dialog" target="_self">
                        
                          <span class="aui-icon aui-icon-large icon-clone"></span>
                        
                        <span class="aui-nav-item-label">Clone</span>
                      </a>
                    </li>
                  
                    <li>
                      <a id="repo-compare-link" class="aui-nav-item " href="/atlassian/aui-adg/branches/compare" data-ct="sidebar.actions.repository.compare" data-ct-data="" target="_self" title="( type x then c )">
                        
                          <span class="aui-icon aui-icon-large aui-icon-small aui-iconfont-devtools-compare"></span>
                        
                        <span class="aui-nav-item-label">Compare</span>
                      </a>
                    </li>
                  
                    <li>
                      <a id="repo-fork-link" class="aui-nav-item " href="/atlassian/aui-adg/fork" data-ct="sidebar.actions.repository.fork" data-ct-data="" target="_self" title="( type x then f )">
                        
                          <span class="aui-icon aui-icon-large icon-fork"></span>
                        
                        <span class="aui-nav-item-label">Fork</span>
                      </a>
                    </li>
                  
                </ul>
              </div>
          
          <div class="aui-sidebar-group aui-sidebar-group-tier-one repository-sections">
            <div class="aui-nav-heading">
              <strong>Navigation</strong>
            </div>
            <ul class="aui-nav" resolved="">
              
              
                <li class="aui-nav-selected">
                  <a id="repo-overview-link" class="aui-nav-item " href="/atlassian/aui-adg/overview" data-ct="sidebar.navigation.repository.overview" data-ct-data="" target="_self" title="( type r then o )">
                    
                    <span class="aui-icon aui-icon-large icon-overview"></span>
                    <span class="aui-nav-item-label">Overview</span>
                  </a>
                </li>
              
                <li>
                  <a id="repo-source-link" class="aui-nav-item " href="/atlassian/aui-adg/src" data-ct="sidebar.navigation.repository.source" data-ct-data="" target="_self" original-title="( type r then s )">
                    
                    <span class="aui-icon aui-icon-large icon-source"></span>
                    <span class="aui-nav-item-label">Source</span>
                  </a>
                </li>
              
                <li>
                  <a id="repo-commits-link" class="aui-nav-item " href="/atlassian/aui-adg/commits/" data-ct="sidebar.navigation.repository.commits" data-ct-data="" target="_self" original-title="( type r then c )">
                    
                    <span class="aui-icon aui-icon-large icon-commits"></span>
                    <span class="aui-nav-item-label">Commits</span>
                  </a>
                </li>
              
                <li>
                  <a id="repo-branches-link" class="aui-nav-item " href="/atlassian/aui-adg/branches/" data-ct="sidebar.navigation.repository.branches" data-ct-data="" target="_self" original-title="( type r then b )">
                    
                    <span class="aui-icon aui-icon-large icon-branches"></span>
                    <span class="aui-nav-item-label">Branches</span>
                  </a>
                </li>
              
                <li>
                  <a id="repo-pullrequests-link" class="aui-nav-item " href="/atlassian/aui-adg/pull-requests/" data-ct="sidebar.navigation.repository.pullrequests" data-ct-data="" target="_self" original-title="( type r then p )">
                    
                      <span class="aui-badge" title="1 open pull request" id="pullrequests-count">1</span>
                    
                    <span class="aui-icon aui-icon-large icon-pull-requests"></span>
                    <span class="aui-nav-item-label">Pull requests</span>
                  </a>
                </li>
              
                <li>
                  <a id="repo-wiki-link" class="aui-nav-item " href="/atlassian/aui-adg/wiki/" data-ct="sidebar.navigation.repository.wiki" data-ct-data="" target="_self" original-title="( type r then w )">
                    
                    <span class="aui-icon aui-icon-large icon-wiki"></span>
                    <span class="aui-nav-item-label">Wiki</span>
                  </a>
                </li>
              
                <li>
                  <a id="repo-downloads-link" class="aui-nav-item " href="/atlassian/aui-adg/downloads" data-ct="sidebar.navigation.repository.downloads" data-ct-data="" target="_self" original-title="( type r then d )">
                    
                    <span class="aui-icon aui-icon-large icon-downloads"></span>
                    <span class="aui-nav-item-label">Downloads</span>
                  </a>
                </li>
              
            </ul>
          </div>
          <div class="aui-sidebar-group aui-sidebar-group-tier-one repository-settings">
            <div class="aui-nav-heading">
              <strong class="assistive">Settings</strong>
            </div>
            <ul class="aui-nav" resolved="">
              
              
            </ul>
          </div>
          
        </div>
      </nav>
    </div>
    <div class="aui-sidebar-footer">
      <a class="aui-sidebar-toggle aui-sidebar-footer-tipsy aui-button aui-button-subtle" original-title=""><span class="aui-icon"></span></a>
    </div>
  </div>
  
  <div id="repo-clone-dialog" class="clone-dialog hidden">
  
  
  <div class="clone-url" data-modules="components/clone/url-dropdown">
  <div class="aui-buttons">
    <a href="#" class="aui-button aui-dropdown2-trigger" aria-haspopup="true" aria-controls="clone-url-dropdown-header" aria-expanded="false" resolved="">
      <span class="dropdown-text">HTTPS</span>
    </a>
    <div id="clone-url-dropdown-header" class="clone-url-dropdown aui-dropdown2 aui-style-default aui-layer" data-aui-alignment="bottom left" aria-hidden="true" resolved="">
      <ul class="aui-list-truncate">
        <li>
          <a href="https://bitbucket.org/atlassian/aui-adg.git" data-command="git clone https://bitbucket.org/atlassian/aui-adg.git" class="item-link https">HTTPS
          </a>
        </li>
        <li>
          <a href="ssh://git@bitbucket.org/atlassian/aui-adg.git" data-command="git clone git@bitbucket.org:atlassian/aui-adg.git" class="item-link ssh">SSH
          </a>
        </li>
      </ul>
    </div>
    <input type="text" readonly="readonly" class="clone-url-input" value="git clone https://bitbucket.org/atlassian/aui-adg.git">
  </div>
  
  <p>Need help cloning? Visit
    <a href="https://confluence.atlassian.com/x/cgozDQ" target="_blank">Bitbucket 101</a>.</p>
  
</div>
  
  <div class="sourcetree-callout clone-in-sourcetree" data-modules="components/clone/clone-in-sourcetree" data-https-url="https://bitbucket.org/atlassian/aui-adg.git" data-ssh-url="ssh://git@bitbucket.org/atlassian/aui-adg.git">

  <div>
    <button class="aui-button aui-button-primary">
      
        Clone in SourceTree
      
    </button>
  </div>

  <p class="windows-text">
    
      <a href="http://www.sourcetreeapp.com/?utm_source=internal&amp;utm_medium=link&amp;utm_campaign=clone_repo_win" target="_blank">Atlassian SourceTree</a>
      is a free Git and Mercurial client for Windows.
    
  </p>
  <p class="mac-text">
    
      <a href="http://www.sourcetreeapp.com/?utm_source=internal&amp;utm_medium=link&amp;utm_campaign=clone_repo_mac" target="_blank">Atlassian SourceTree</a>
      is a free Git and Mercurial client for Mac.
    
  </p>
</div>
</div>
</div>

      
  <div class="aui-page-panel ">
    
  
  
    <div class="aui-page-panel-inner">
      <div id="repo-content" class="aui-page-panel-content" data-modules="repo/index">
        <div class="aui-group repo-page-header">
          <div class="aui-item section-title">
            <h1>Overview</h1>
          </div>
          <div class="aui-item page-actions">
            
  <div class="aui-buttons" id="repo-clone-sourcetree">
  <button class="aui-button" id="repo-clone-sourcetree-trigger" data-modules="repo/overview/sourcetree-dialog" title="Clone in SourceTree">
    <span class="aui-icon aui-icon-small aui-iconfont-devtools-clone">Clone in SourceTree</span>
  </button>
</div>
<div id="repo-clone-sourcetree-dialog" class="hidden">
  
  <div class="sourcetree-callout clone-in-sourcetree" data-modules="components/clone/clone-in-sourcetree" data-https-url="https://bitbucket.org/atlassian/aui-adg.git" data-ssh-url="ssh://git@bitbucket.org/atlassian/aui-adg.git">

  <div>
    <button class="aui-button aui-button-primary">
      
        Clone in SourceTree
      
    </button>
  </div>

  <p class="windows-text">
    
      <a href="http://www.sourcetreeapp.com/?utm_source=internal&amp;utm_medium=link&amp;utm_campaign=clone_repo_win" target="_blank">Atlassian SourceTree</a>
      is a free Git and Mercurial client for Windows.
    
  </p>
  <p class="mac-text">
    
      <a href="http://www.sourcetreeapp.com/?utm_source=internal&amp;utm_medium=link&amp;utm_campaign=clone_repo_mac" target="_blank">Atlassian SourceTree</a>
      is a free Git and Mercurial client for Mac.
    
  </p>
</div>
</div>
  
  
  <div class="clone-url" data-modules="components/clone/url-dropdown">
  <div class="aui-buttons">
    <a href="#" class="aui-button aui-dropdown2-trigger" aria-haspopup="true" aria-controls="clone-url-dropdown-overview" aria-expanded="false" resolved="">
      <span class="dropdown-text">HTTPS</span>
    </a>
    <div id="clone-url-dropdown-overview" class="clone-url-dropdown aui-dropdown2 aui-style-default aui-layer" data-aui-alignment="bottom left" aria-hidden="true" resolved="">
      <ul class="aui-list-truncate">
        <li>
          <a href="https://bitbucket.org/atlassian/aui-adg.git" data-command="https://bitbucket.org/atlassian/aui-adg.git" class="item-link https">HTTPS
          </a>
        </li>
        <li>
          <a href="ssh://git@bitbucket.org/atlassian/aui-adg.git" data-command="git@bitbucket.org:atlassian/aui-adg.git" class="item-link ssh">SSH
          </a>
        </li>
      </ul>
    </div>
    <input type="text" readonly="readonly" class="clone-url-input" value="https://bitbucket.org/atlassian/aui-adg.git">
  </div>
  
</div>
  

          </div>
        </div>
        
  <div id="repo-overview" class="aui-group" data-modules="repo/overview/index" data-admin-url="/atlassian/aui-adg/admin/hipchat-integration">
  
  
    <div class="aui-item">
      <div id="repo-info" class="aui-group">
        <div class="aui-item repo-metadata-container">
          <dl class="repo-metadata">
            <dt>Last updated</dt>
            
              <dd title="2015-08-06">
                <time datetime="2015-08-06T07:00:04.317897" title="6 August 2015 16:00">2015-08-06</time>
              </dd>

            

            

            <dt>Language</dt>
            <dd title="JavaScript">
              
                JavaScript
              
            </dd>

            <dt>Access level</dt>
            

            
            
              <dd title="You have read access">
                Read
              </dd>
            
          </dl>
        </div>
        <div class="aui-item repo-stats-container" id="repo-stats" data-modules="repo/overview/repo-stats">
          <ul class="stats">
            
            
            
              <li class="branches">
                <a href="#branches" id="branches-dialog-trigger" data-modules="repo/overview/filterable-list-dialog" title="View branches in this repository" data-url="/api/1.0/repositories/atlassian/aui-adg/branches-tags" data-template="branches-overview-template">
                  <span class="value">99+</span>
                  
                    Branches
                  
                </a>
              </li>
              <li class="tags">
                <a href="#tags" id="tags-dialog-trigger" data-modules="repo/overview/filterable-list-dialog" title="View tags in this repository" data-url="/api/1.0/repositories/atlassian/aui-adg/branches-tags" data-template="tags-overview-template">
                  <span class="value">99+</span>
                  
                    Tags
                  
                </a>
              </li>
              <li class="forks">
                <a href="#forks" id="forks-dialog-trigger" data-modules="repo/overview/filterable-list-dialog" title="View forks of this repository" data-url="/api/1.0/repositories/atlassian/aui-adg/forks" data-template="forks-overview-template">
                  <span class="value">1</span>
                  
                    Fork
                  
                </a>
              </li>
            <li class="followers">
              
              <a href="#followers" id="followers-dialog-trigger" data-modules="repo/overview/followers-dialog" title="View watchers of this repository" data-url="/api/1.0/repositories/atlassian/aui-adg/followers" data-template="watchers-overview-template">
                <span class="value">8</span>
                
                  Watchers
                
              </a>
            </li>
          </ul>

          <script id="branches-overview-template" type="text/html">
    

<div class="tabbed-filter-widget repo-stats-dialog branches" id="branches-dialog">
  <div class="tabbed-filter">
    <input placeholder="Filter branches" class="filter-box" autosave="branch-dropdown-4923983" type="text">
  </div>
  <div class="tab-pane active-pane branches" id="branch-list">
    <ol class="filter-list[[^branches]] empty[[/branches]]">
      <li class="empty-msg">No matching branches</li>
      [[#branches]]
        <li class="comprev filter-item">
          <a href="/atlassian/aui-adg/branch/[[encodedName]]"
             class="filter-item-link" title="View details for [[name]]">[[name]]</a>
        </li>
      [[/branches]]
    </ol>
  </div>
</div>

  </script>
          <script id="tags-overview-template" type="text/html">
    

<div class="tabbed-filter-widget repo-stats-dialog tags" id="tags-dialog">
    <div class="tabbed-filter">
      <input placeholder="Filter tags" class="filter-box" autosave="tag-dropdown-4923983" type="text">
    </div>
    <div class="tab-pane active-pane tags" id="tag-list">
    <ol class="filter-list[[^tags]] empty[[/tags]]">
      <li class="empty-msg">No matching tags</li>
      [[#tags]]
        <li class="comprev filter-item">
          <a href="/atlassian/aui-adg/commits/tag/[[encodedName]]" 
             class="filter-item-link" title="Browse source of [[name]]">[[name]]</a>
          <a rel="nofollow" class="compare"
             href="/atlassian/aui-adg/branches/compare/[[encodedName]].."
             title="Show changes between [[name]] and the main branch.">Compare</a>
        </li>
      [[/tags]]
    </ol>
  </div>
</div>

  </script>
          <script id="forks-overview-template" type="text/html">
    

<div class="tabbed-filter-widget repo-stats-dialog forks" id="forks-dialog">
    <div class="tabbed-filter">
      <input placeholder="Filter forks" class="filter-box" autosave="fork-dropdown-4923983" type="text">
    </div>
    <div class="tab-pane active-pane forks" id="fork-list">
    <ol class="filter-list[[^forks]] empty[[/forks]]">
      <li class="empty-msg">No matching forks</li>
      [[#forks]]
        <li class="comprev filter-item">
          <a href="/[[owner.username]]/[[slug]]" 
             class="filter-item-link" title="[[owner.username]]/[[slug]]">[[owner.username]]/[[slug]]</a>
          <a rel="nofollow" class="compare"
             href="/atlassian/aui-adg/branches/compare/[[owner.username]]/[[slug]].."
             title="Show changes between [[owner.username]]/[[slug]] and this repository.">Compare</a>
        </li>
      [[/forks]]
    </ol>
  </div>
</div>

  </script>
          <script id="watchers-overview-template" type="text/html">
    

<div class="followers-dialog repo-stats-dialog" id="followers-dialog">
  <div id="followers-list" class="followers-list">
    <ol[[^followers]] class="empty"[[/followers]]>
      <li class="empty-msg">No watchers yet</li>
      [[#followers]]
        <li>
          <a href="/[[username]]/" title="[[display_name]]">
            <span class="aui-avatar aui-avatar-medium">
              <span class="aui-avatar-inner">
                <img src="[[avatar]]">
              </span>
            </span>
          </a>
        </li>
      [[/followers]]
    </ol>
  </div>
</div>

  </script>
        </div>
      </div>
      
      
      
        <div id="readme" class="maskable">
          
            
            <div class="readme file wiki-content">
              
                <h1 id="markdown-header-aui-adg">AUI ADG</h1>
<p>Extension of AUI to implement the Atlassian Design Guidelines.</p>
<h2 id="markdown-header-requirements">Requirements</h2>
<ul>
<li>Node 0.12+</li>
<li>NPM 1.3+</li>
<li>Bower 1.2+</li>
<li>Java 7</li>
<li>Maven 3+ (<a href="http://mvnvm.org/">mvnvm</a> can be used to manage the maven version)</li>
</ul>
<h2 id="markdown-header-installation">Installation</h2>
<p>NPM install takes care of everything for you.</p>
<div class="codehilite"><pre>npm install
</pre></div>


<p>To avoid issues between different versions of build tools such as bower or gulp, we use local npm
versions of all build tools instead of globally installed versions. For example, we use</p>
<div class="codehilite"><pre>./node_modules/.bin/gulp build
</pre></div>


<p>instead of</p>
<div class="codehilite"><pre>gulp build
</pre></div>


<h2 id="markdown-header-linking-to-the-aui-source">Linking to the AUI source</h2>
<ol>
<li>Run <code>bower link</code> in your local AUI repo</li>
<li>Run <code>bower link aui</code> in your local AUI-ADG repo</li>
</ol>
<p>Note that you must run the <code>gulp build</code> task in AUI before running any of the below commands.</p>
<h2 id="markdown-header-running-standalone-test-pages-aka-flatapp">Running standalone test pages aka 'flatapp'</h2>
<p>To run test pages:</p>
<div class="codehilite"><pre>./node_modules/.bin/gulp flatapp
</pre></div>


<h2 id="markdown-header-running-plugins2-test-pages">Running plugins2 test pages</h2>
<p>To run AUI as an Atlassian plugin in the Atlassian Refapp, first build the maven distribution</p>
<div class="codehilite"><pre>./node_modules/.bin/gulp refapp:install
</pre></div>


<p>Then to start the refapp server</p>
<div class="codehilite"><pre>./node_modules/.bin/gulp refapp
</pre></div>


<p>Both of the above commands filter maven output by default. Pass the <code>--verbose</code> flag to view the full maven output.</p>
<p>If you wish to install the plugin without running the refapp,
    ./node_modules/.bin/gulp plugin</p>
<h2 id="markdown-header-running-plugins2-test-pages_1">Running plugins2 test pages</h2>
<p>To run integration tests in the Atlassian refapp, run</p>
<div class="codehilite"><pre>./node_modules/.bin/gulp refapp:integration-test
</pre></div>


<p>Note that you need to have run <code>gulp refapp:install</code> before running integration tests</p>
<ol>
<li>To install the maven artifact in your product, it is located in <code>integration/plugin/target/</code></li>
<li>Make changes and reload pages to see them</li>
</ol>
<h2 id="markdown-header-contributing">Contributing</h2>
<p>Create a new branch using this format: <code>AUI-1234-description-of-the-change</code></p>
<ul>
<li>Stable branches [x.x.x] for bug fixes corresponding to the version which the bug affects</li>
<li>Feature branches [epic/*] for adding features to an epic</li>
</ul>
<p>Tests and Documentation live in the AUI repo, update those if modifying AUI source as well</p>
<p>Commit your changes ensuring you add the issue key to the message, eg: git commit -m "<a href="https://ecosystem.atlassian.net/browse/AUI-1234" rel="nofollow">AUI-1234</a> updated README"</p>
<p>Submit a pull request to master or the relevant stable/epic branch</p>
<h2 id="markdown-header-documenting">Documenting</h2>
<p>To build the docs:</p>
<div class="codehilite"><pre>npm run docs/build
</pre></div>


<p>To build and run the docs on a local server:</p>
<div class="codehilite"><pre>npm run docs
</pre></div>


<h2 id="markdown-header-releasing">Releasing</h2>
<div class="codehilite"><pre>./build/bin/release.sh [release-version] [tag-name] [next-version]
</pre></div>


<h2 id="markdown-header-changelog">Changelog</h2>
<ul>
<li><a href="https://bitbucket.org/atlassian/aui-adg/src/master/changelog.md?at=master">Changelog</a></li>
</ul>
            </div>
          
        </div>
    </div>

    <div class="aui-item sidebar">
      
        <section class="bb-banner" id="signup-banner" data-modules="components/banner">
  <div>
    <p>
      
        Unlimited private and public hosted repositories.  Free for small teams!
      
    </p>
    <a class="aui-button aui-button-primary signup-button" href="/account/signup/">Sign up for free</a>
    <span class="close aui-icon aui-icon-small aui-iconfont-close-dialog" title="Dismiss this banner">Close</span>
  </div>
</section>
      
      
      
        
      

      <section id="repo-activity" class="activity">
        <h2>
          Recent activity
          
          <a href="/atlassian/aui-adg/rss" title="Subscribe to activity updates for this repository" class="subscribe">
            <span class="aui-icon aui-icon-small aui-iconfont-rss rss-icon"></span>
          </a>
        </h2>
        
          
  <div class="newsfeed">
    
      
        

<article class="news-item pushed">
  
    <a href="/bewong/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="Benjamin Wong" src="https://bitbucket.org/account/bewong/avatar/96/?ts=0" class="" data-src-url="https://bitbucket.org/account/bewong/avatar/48/?ts=0" data-src-url-2x="https://bitbucket.org/account/bewong/avatar/96/?ts=0">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
  
  
    <a href="/atlassian/aui-adg/commits/all">3 commits</a>
  

  </div>
  <div class="news-item-description">
    
  Pushed to 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  

  </div>
  
  <div class="changesets">
    
      <div class="changeset">
        
          <a href="/atlassian/aui-adg/commits/332d5f83e73f24527640e2c71bfd04e54d0aaafc" class="changeset-hash">332d5f8</a>
          
            
            Merged in <a href="https://ecosystem.atlassian.net/browse/AUI-3666" rel="nofollow">AUI-3666</a>-upgrade-aui-docs-from-google-an (<a href="https://bitbucket.org/atlassian/aui-adg/pull-requests/471/aui-3666-upgrade-to-univeral-analytics-57x" rel="nofollow">pull request #471</a>)
          
        
      </div>
    
      <div class="changeset">
        
          <a href="/atlassian/aui-adg/commits/e933b20df07cf6fd65143ba1933753c5102cb8c5" class="changeset-hash">e933b20</a>
          
            
            <a href="https://ecosystem.atlassian.net/browse/AUI-3666" rel="nofollow">AUI-3666</a> remove uncessary comment from copy pasta
          
        
      </div>
    
      <div class="changeset">
        
          <a href="/atlassian/aui-adg/commits/6ae72c994fb9e80f0a5316d3f460d819409a3466" class="changeset-hash">6ae72c9</a>
          
            
            <a href="https://ecosystem.atlassian.net/browse/AUI-3666" rel="nofollow">AUI-3666</a> upgrade to univeral analytics
          
        
      </div>
    
    
  </div>

  <div class="news-item-info">
    
    
  

  
    <a href="/bewong/">Benjamin Wong</a>
  
    ·
    <time datetime="2015-08-06T16:00:05+09:00" title="6 August 2015 16:00">3 days ago</time>
  </div>
</article>
      
    
      
        

<article class="news-item pullrequest_fulfilled">
  
    <a href="/bewong/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="Benjamin Wong" src="https://bitbucket.org/account/bewong/avatar/96/?ts=0" class="" data-src-url="https://bitbucket.org/account/bewong/avatar/48/?ts=0" data-src-url-2x="https://bitbucket.org/account/bewong/avatar/96/?ts=0">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
    <a href="/atlassian/aui-adg/pull-requests/471/aui-3666-upgrade-to-univeral-analytics-57x#comment-None">AUI-3666 upgrade to univeral analytics - 5.7.x</a>
  

  </div>
  <div class="news-item-description">
    
  
    Pull request #471 merged in 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  
  

  </div>
  
  <div class="news-item-info">
    
    
  

  
    <a href="/bewong/">Benjamin Wong</a>
  
    ·
    <time datetime="2015-08-06T16:00:04+09:00" title="6 August 2015 16:00">3 days ago</time>
  </div>
</article>
      
    
      
        

<article class="news-item pushed">
  
    <a href="/bewong/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="Benjamin Wong" src="https://bitbucket.org/account/bewong/avatar/96/?ts=0" class="" data-src-url="https://bitbucket.org/account/bewong/avatar/48/?ts=0" data-src-url-2x="https://bitbucket.org/account/bewong/avatar/96/?ts=0">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
  
  
    <a href="/atlassian/aui-adg/commits/all">3 commits</a>
  

  </div>
  <div class="news-item-description">
    
  Pushed to 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  

  </div>
  
  <div class="changesets">
    
      <div class="changeset">
        
          <a href="/atlassian/aui-adg/commits/349678a36413ea1cce825568e5cdeefbf03dab5b" class="changeset-hash">349678a</a>
          
            
            Merged in <a href="https://ecosystem.atlassian.net/browse/AUI-3666" rel="nofollow">AUI-3666</a>-upgrade-aui-docs-from-google-an-5.8.x (<a href="https://bitbucket.org/atlassian/aui-adg/pull-requests/472/aui-3666-remove-redundant-ga-code-and" rel="nofollow">pull request #472</a>)
          
        
      </div>
    
      <div class="changeset">
        
          <a href="/atlassian/aui-adg/commits/d8bce16eceb1f4387a643240639597417984febb" class="changeset-hash">d8bce16</a>
          
            
            <a href="https://ecosystem.atlassian.net/browse/AUI-3666" rel="nofollow">AUI-3666</a> remove uncessary comment from copy pasta
          
        
      </div>
    
      <div class="changeset">
        
          <a href="/atlassian/aui-adg/commits/77458824407eb9c21271ad791247d222ebb1fe08" class="changeset-hash">7745882</a>
          
            
            <a href="https://ecosystem.atlassian.net/browse/AUI-3666" rel="nofollow">AUI-3666</a> remove redundant ga code and place inside module for easier consumption
          
        
      </div>
    
    
  </div>

  <div class="news-item-info">
    
    
  

  
    <a href="/bewong/">Benjamin Wong</a>
  
    ·
    <time datetime="2015-08-06T15:59:55+09:00" title="6 August 2015 15:59">3 days ago</time>
  </div>
</article>
      
    
      
        

<article class="news-item pullrequest_fulfilled">
  
    <a href="/bewong/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="Benjamin Wong" src="https://bitbucket.org/account/bewong/avatar/96/?ts=0" class="" data-src-url="https://bitbucket.org/account/bewong/avatar/48/?ts=0" data-src-url-2x="https://bitbucket.org/account/bewong/avatar/96/?ts=0">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
    <a href="/atlassian/aui-adg/pull-requests/472/aui-3666-remove-redundant-ga-code-and#comment-None">AUI-3666 remove redundant ga code and place inside module for easier consumption - 5.8.x</a>
  

  </div>
  <div class="news-item-description">
    
  
    Pull request #472 merged in 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  
  

  </div>
  
  <div class="news-item-info">
    
    
  

  
    <a href="/bewong/">Benjamin Wong</a>
  
    ·
    <time datetime="2015-08-06T15:59:55+09:00" title="6 August 2015 15:59">3 days ago</time>
  </div>
</article>
      
    
      
        

<article class="news-item pushed">
  
    <a href="/bewong/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="Benjamin Wong" src="https://bitbucket.org/account/bewong/avatar/96/?ts=0" class="" data-src-url="https://bitbucket.org/account/bewong/avatar/48/?ts=0" data-src-url-2x="https://bitbucket.org/account/bewong/avatar/96/?ts=0">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
  
  
    <a href="/atlassian/aui-adg/commits/all">2 commits</a>
  

  </div>
  <div class="news-item-description">
    
  Pushed to 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  

  </div>
  
  <div class="changesets">
    
      <div class="changeset">
        
          <a href="/atlassian/aui-adg/commits/cfc3cd976b7fcdea57c178cebc19feaad988347c" class="changeset-hash">cfc3cd9</a>
          
            
            Merged in <a href="https://ecosystem.atlassian.net/browse/AUI-3666" rel="nofollow">AUI-3666</a>-upgrade-aui-docs-from-google-an-5.9.x (<a href="https://bitbucket.org/atlassian/aui-adg/pull-requests/473/aui-3666-remove-script-tags-for-ga-since" rel="nofollow">pull request #473</a>)
          
        
      </div>
    
      <div class="changeset">
        
          <a href="/atlassian/aui-adg/commits/3a9409ffd7ccc35c9345633bbc23d4dc73cdda44" class="changeset-hash">3a9409f</a>
          
            
            <a href="https://ecosystem.atlassian.net/browse/AUI-3666" rel="nofollow">AUI-3666</a> remove script tags for ga since we now consume it via a module
          
        
      </div>
    
    
  </div>

  <div class="news-item-info">
    
    
  

  
    <a href="/bewong/">Benjamin Wong</a>
  
    ·
    <time datetime="2015-08-06T15:59:48+09:00" title="6 August 2015 15:59">3 days ago</time>
  </div>
</article>
      
    
      
        

<article class="news-item pullrequest_fulfilled">
  
    <a href="/bewong/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="Benjamin Wong" src="https://bitbucket.org/account/bewong/avatar/96/?ts=0" class="" data-src-url="https://bitbucket.org/account/bewong/avatar/48/?ts=0" data-src-url-2x="https://bitbucket.org/account/bewong/avatar/96/?ts=0">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
    <a href="/atlassian/aui-adg/pull-requests/473/aui-3666-remove-script-tags-for-ga-since#comment-None">AUI-3666 remove script tags for ga since we now consume it via a module - 5.9.x</a>
  

  </div>
  <div class="news-item-description">
    
  
    Pull request #473 merged in 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  
  

  </div>
  
  <div class="news-item-info">
    
    
  

  
    <a href="/bewong/">Benjamin Wong</a>
  
    ·
    <time datetime="2015-08-06T15:59:48+09:00" title="6 August 2015 15:59">3 days ago</time>
  </div>
</article>
      
    
      
        

<article class="news-item wiki_updated">
  
    <a href="/paulwatson/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="paulwatson" src="https://bitbucket.org/account/paulwatson/avatar/96/?ts=0" class="" data-src-url="https://bitbucket.org/account/paulwatson/avatar/48/?ts=0" data-src-url-2x="https://bitbucket.org/account/paulwatson/avatar/96/?ts=0">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
    <a href="/atlassian/aui-adg/wiki/versions/product-version-matrix">versions/product-version-matrix</a>
    


  </div>
  <div class="news-item-description">
    
  Wiki page updated in 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  

  </div>
  
  <div class="news-item-info">
    
    
  

  
    <a href="/paulwatson/">paulwatson</a>
  
    ·
    <time datetime="2015-08-06T10:41:50+09:00" title="6 August 2015 10:41">3 days ago</time>
  </div>
</article>
      
    
      
        

<article class="news-item pullrequest_created">
  
    <a href="/wkritzinger/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="Wolfgang Kritzinger" src="https://bitbucket.org/account/wkritzinger/avatar/96/?ts=1438657012" class="" data-src-url="https://bitbucket.org/account/wkritzinger/avatar/48/?ts=1438657012" data-src-url-2x="https://bitbucket.org/account/wkritzinger/avatar/96/?ts=1438657012">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
    <a href="/atlassian/aui-adg/pull-requests/474/add-profile-for-jdk18-to-disable-javadoc#comment-None">add profile for jdk1.8 to disable javadoc linting</a>
  

  </div>
  <div class="news-item-description">
    
  
    Pull request #474 created in 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  
  

  </div>
  
  <div class="news-item-info">
    
    
  

  
    <a href="/wkritzinger/">Wolfgang Kritzinger</a>
  
    ·
    <time datetime="2015-08-06T09:39:19+09:00" title="6 August 2015 09:39">3 days ago</time>
  </div>
</article>
      
    
      
        

<article class="news-item pushed">
  
    <a href="/wkritzinger/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="Wolfgang Kritzinger" src="https://bitbucket.org/account/wkritzinger/avatar/96/?ts=1438657012" class="" data-src-url="https://bitbucket.org/account/wkritzinger/avatar/48/?ts=1438657012" data-src-url-2x="https://bitbucket.org/account/wkritzinger/avatar/96/?ts=1438657012">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
  
  
    <a href="/atlassian/aui-adg/commits/4f02f63f0b8178fd31a05951c8659452270e9d11">1 commit</a>
  

  </div>
  <div class="news-item-description">
    
  Pushed to 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  

  </div>
  
  <div class="changesets">
    
      <div class="changeset">
        
          <a href="/atlassian/aui-adg/commits/4f02f63f0b8178fd31a05951c8659452270e9d11" class="changeset-hash">4f02f63</a>
          
            
            add profile for jdk1.8 to disable javadoc linting
          
        
      </div>
    
    
  </div>

  <div class="news-item-info">
    
    
  

  
    <a href="/wkritzinger/">Wolfgang Kritzinger</a>
  
    ·
    <time datetime="2015-08-06T09:37:51+09:00" title="6 August 2015 09:37">3 days ago</time>
  </div>
</article>
      
    
      
        

<article class="news-item pullrequest_like">
  
    <a href="/joshuanelson/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="Joshua Nelson" src="https://bitbucket.org/account/joshuanelson/avatar/96/?ts=1435191210" class="" data-src-url="https://bitbucket.org/account/joshuanelson/avatar/48/?ts=1435191210" data-src-url-2x="https://bitbucket.org/account/joshuanelson/avatar/96/?ts=1435191210">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
    <a href="/atlassian/aui-adg/pull-requests/473/aui-3666-remove-script-tags-for-ga-since#comment-None">AUI-3666 remove script tags for ga since we now consume it via a module - 5.9.x</a>
  

  </div>
  <div class="news-item-description">
    
  
    Pull request #473 approved in 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  
  

  </div>
  
  <div class="news-item-info">
    
    
  

  
    <a href="/joshuanelson/">Joshua Nelson</a>
  
    ·
    <time datetime="2015-08-06T08:51:17+09:00" title="6 August 2015 08:51">3 days ago</time>
  </div>
</article>
      
    
      
        

<article class="news-item pullrequest_like">
  
    <a href="/joshuanelson/">
      <div class="aui-avatar aui-avatar-small">
          <div class="aui-avatar-inner">
            <img alt="Joshua Nelson" src="https://bitbucket.org/account/joshuanelson/avatar/96/?ts=1435191210" class="" data-src-url="https://bitbucket.org/account/joshuanelson/avatar/48/?ts=1435191210" data-src-url-2x="https://bitbucket.org/account/joshuanelson/avatar/96/?ts=1435191210">
          </div>
      </div>
    </a>
  

  <div class="news-item-title">
    
  
    <a href="/atlassian/aui-adg/pull-requests/472/aui-3666-remove-redundant-ga-code-and#comment-None">AUI-3666 remove redundant ga code and place inside module for easier consumption - 5.8.x</a>
  

  </div>
  <div class="news-item-description">
    
  
    Pull request #472 approved in 
    
    <a href="/atlassian/aui-adg" title="atlassian/aui-adg">
      atlassian/aui-adg
    </a>
  
  

  </div>
  
  <div class="news-item-info">
    
    
  

  
    <a href="/joshuanelson/">Joshua Nelson</a>
  
    ·
    <time datetime="2015-08-06T08:39:34+09:00" title="6 August 2015 08:39">3 days ago</time>
  </div>
</article>
      
    
  </div>

        
      </section>
    </div>
  </div>

  

  

        
        
        
      </div>
    </div>
  </div>

    </div>
      <footer id="footer" role="contentinfo">
        <section class="footer-body">
          <ul>
            <li>I ♥ AUI</li>
          </ul>
          <div id="footer-logo"><a href="http://www.atlassian.com/" target="_blank">Atlassian</a></div>
        </section>
      </footer>
    </div>
</body>
</html>