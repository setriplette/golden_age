<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>The Pilgrim of Castile</title>
                <link rel="stylesheet" type="text/css" href="/places.css" />
            </head>
            <body>
                <xsl:comment>#include virtual="menu.html"</xsl:comment>
                <h1>Places</h1>
                <h2>Pilgrim of Castile</h2>
                <div id="placeNames">
                    <ul><xsl:apply-templates select="//body"/></ul>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="//body//place">
        <li><xsl:apply-templates select="./placeName"/></li>
    </xsl:template>
</xsl:stylesheet>