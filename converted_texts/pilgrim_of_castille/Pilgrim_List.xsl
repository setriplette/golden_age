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
                <link rel="stylesheet" type="text/css" href="prose_reading_view.css" />
                <link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
                <script type="text/javascript" src="pilgrim_reading_view.js"></script>
            </head>
            <body>
                <h1>The Pilgrim of Castile List of Characters and Places</h1>
                <div type="list">
                    <h2>Characters</h2>
                    <ul type="person"><xsl:apply-templates select="descendant::persName"/></ul>
                </div>
                <div type="list">
                    <h2>Places</h2>
                    <ul type="place"><xsl:apply-templates select="descendant::placeName"/></ul>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="descendant::persName">
        <li><xsl:apply-templates/></li>
    </xsl:template>
    <xsl:template match="descendant::placeName">
        <li><xsl:apply-templates/></li>
    </xsl:template>
</xsl:stylesheet>