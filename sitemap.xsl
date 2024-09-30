---
---

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:template match="/">
    <html>
    <head>
      <!-- Made with <3 by Vino Rodrigues {{ '/' | absolute_url }} -->
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <title>{{ site.title }} - Sitemap</title>
      <meta name="color-scheme" content="light dark" />
      <link href="https://cdn.jsdelivr.net/gh/vinorodrigues/bootstrap-dark@0.6.1/dist/bootstrap-dark.min.css" rel="stylesheet" media="all" />
      <style>a,a:hover{text-decoration:none;}.xframe{background-color:rgba(0,0,0,0.05);}@media(prefers-color-scheme:dark){.xframe{background-color:rgba(255,255,255,0.05);}}</style>
    </head>
    <body>
      <div class="container my-3">
        <header class="row">
          <h1 class="col h3 mt-5"><a href="{{ '/' | absolute_url }}"><img src="{{ 'favicon.svg' | absolute_url }}" width="32" height="32" alt=""/><span> {{ site.title }}</span></a><small class="text-muted"> - Sitemap</small></h1>
        </header>
        <div class="row my-2 p-3">
          <div class="col xframe rounded rounded-lg border shadow shadow-lg">
            <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">URL</th>
                <th scope="col">Last update</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <tr>
                  <td scope="row"><xsl:value-of select="position()" /></td>
                  <td>
                    <a>
                      <xsl:attribute name="href">
                        <xsl:value-of select="sitemap:loc"/>
                      </xsl:attribute>
                      <pre><xsl:value-of select="sitemap:loc"/></pre>
                    </a>
                  </td>
                  <td><xsl:value-of select="sitemap:lastmod" /></td>
                </tr>
              </xsl:for-each>
            </tbody>
            </table>
          </div>
        </div>
        <footer class="row">
          <small class="col text-muted"><span>&#169; 2024 </span><a href="{{ '/' | absolute_url }}">Tecsmith</a></small>
        </footer>
      </div>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
