<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
  xmlns:ouvrage-to-html="http://www.lefebvre-sarrut.eu/ns/els/projects/ouvrage-to-html"
  xmlns:functx="http://www.functx.com"
  xmlns:elsLib="http://www.lefebvre-sarrut.eu/ns/els/xslLib"
  xmlns:cals="http://docs.oasis-open.org/ns/oasis-exchange/table"
  xmlns="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="#all"
  version="2.0">
  
  <xd:doc scope="stylesheet">
    <xd:desc>
      <xd:p>This XSLT convert any "Ouvrage XML" to HTML</xd:p>
    </xd:desc>
  </xd:doc>
  
  <xsl:output method="html"/>
  
  <!--===========================-->
  <!--INIT-->
  <!--===========================-->
  
  <xsl:template match="/">
    <xsl:apply-templates select="." mode="ouvrage-to-html:main"/>
  </xsl:template>
  
  <!--===========================-->
  <!--MAIN-->
  <!--===========================-->
  
  <xsl:template match="/ouvrage" mode="ouvrage-to-html:main">
    <html>
      <head>
        <title>Ouvrage</title>
      </head>
      <body>
        <xsl:apply-templates mode="#current"/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="introduction | corpus" mode="ouvrage-to-html:main">
    <div class="{local-name()}">
      <xsl:apply-templates mode="#current"/>
    </div>
  </xsl:template>
  
  <xsl:template match="t1" mode="ouvrage-to-html:main">
    <h1>
      <xsl:apply-templates mode="#current"/>
    </h1>
  </xsl:template>
  
  <xsl:template match="t2" mode="ouvrage-to-html:main">
    <h2>
      <xsl:apply-templates mode="#current"/>
    </h2>
  </xsl:template>
  
  <xsl:template match="alinea" mode="ouvrage-to-html:main">
    <p>
      <xsl:apply-templates mode="#current"/>
    </p>
  </xsl:template>
  
</xsl:stylesheet>