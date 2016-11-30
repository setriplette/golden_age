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
                <h1>The Pilgrim of Castile</h1>
                <h2>Lope de Vega</h2>
                <h3>Translated and Abridged by William Dutton</h3>
                
                <hr/>
                <div>
                    <fieldset>
                        <legend>Click to Highlight:</legend>
                        <input type="checkbox" id="persNametoggle"/>
                        <span class="persName">Persons</span>
                        <input type="checkbox" id="placeNametoggle"/>
                        <span class="placeName">Places</span>
                        <input type="checkbox" id="emotiontoggle"/>
                        <span class="emotion">Emotions</span>
                        <input type="checkbox" id="bodytoggle"/>
                        <span class="body">Body Parts</span>
                    </fieldset>
                </div>

                <div id="main">
                    <xsl:apply-templates select="//body"/>
                </div>

            </body>

        </html>
    </xsl:template>
    <xsl:template match="head"><p class="bookHead"><xsl:apply-templates/></p></xsl:template>
    <xsl:template match="rs[@type='emotion']"><xsl:variable name="ana" select="./@ana"/><span class="emotion" lang="{$ana}"><xsl:apply-templates/></span></xsl:template>
    <xsl:template match="rs[@type='body']"><span class="body"><xsl:apply-templates/></span></xsl:template>
    <xsl:template match="persName"><span class="persName"><xsl:apply-templates/></span></xsl:template>
    <xsl:template match="placeName"><span class="placeName"><xsl:apply-templates/></span></xsl:template>
    <xsl:template match="p"><p class="prose"><xsl:apply-templates/><br/></p></xsl:template>
    <xsl:template match="floatingText"><div class="floating"><xsl:apply-templates/></div></xsl:template>
    
   

</xsl:stylesheet>
