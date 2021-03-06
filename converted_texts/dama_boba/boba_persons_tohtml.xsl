<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>People of La dama boba</title>
                <link rel="stylesheet" type="text/css" href="listPersons.css"/>
                <script type="text/javascript" src="persons_toggle.js"></script>
            </head>
            <!--#include virtual="menu.html"-->
            <body>
                
                <h1>La dama boba</h1>
                <h2>People</h2>
                <div id="fieldset">
                    <fieldset>
                        <legend>Click to Highlight:</legend>
                        <input type="checkbox" id="histPerson"/>
                        <span>Historical</span>
                        <input type="checkbox" id="mythPerson"/>
                        <span>Mythological</span>
                        <input type="checkbox" id="fictPerson"/>
                        <span>Fictional</span>
                        <input type="checkbox" id="biblPerson"/>
                        <span>Biblical</span>
                 
                    </fieldset>
                </div>
                <div id="listPerson">
                    <xsl:for-each select="descendant::person">
                        <xsl:sort order="ascending"/>
                        <p><span class="forename"><xsl:apply-templates select="descendant::forename"/></span>
                            <xsl:text> </xsl:text>
                            <span class="surname"><xsl:apply-templates select="descendant::surname"/></span></p>
                        <p><span class="note"><xsl:apply-templates select="descendant::note"/></span></p>
                    </xsl:for-each>
                </div>
            </body></html></xsl:template>
    
</xsl:stylesheet>
