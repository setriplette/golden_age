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
                <ul class ="topnav" id="myTopnav">
                    <li><a href="/index.html">Main</a></li>
                    <li><a href="/playList.html">Plays</a></li>
                    <li><a href="/proseList.html">Prose</a></li>
                    <li><a href="/dama_boba/visualizations/dama_boba_viz.html">Data</a></li>
                    <li><a href="/people.html">People</a></li>
                    <li><a href="/places.html">Places</a></li>
                    <li><a href="/about.html">About</a></li>
                </ul>
                <h1>The Pilgrim of Castile</h1>
                <h2>Lope de Vega</h2>
                <h3>Translated and Abridged by William Dutton</h3>
                
                <hr/>
                <div>
                    <fieldset>
                        <legend>Click to Highlight:</legend>
                        <input type="checkbox" id="persNametoggle"/>
                        <span class="persName">Persons</span><br/>
                        <input type="checkbox" id="placeNametoggle"/>
                        <span class="placeName">Places</span><br/>
                        <input type="checkbox" id="emotiontoggle"/>
                        <span class="emotion">Emotions</span><br/>
                        <input type="checkbox" id="bodytoggle"/>
                        <span class="body">Body Parts</span>
                    </fieldset>
                </div>

                <div id="main">
                    <xsl:apply-templates select="//text/body"/>
                </div>

            </body>

        </html>
    </xsl:template>
    <xsl:template match="//text/body/div[@type='book']/head"><p class="bookHead"><xsl:apply-templates/></p></xsl:template>
    <xsl:template match="//head[@type='narrative']"><p class="narrative"><xsl:apply-templates/></p></xsl:template>
    <xsl:template match="//floatingText[@type='letter']/body/head"><p class="letter"><xsl:apply-templates/></p></xsl:template>
    <xsl:template match="rs[@type='emotion']"><xsl:variable name="ana" select="./@ana"/><span class="emotion" lang="{$ana}"><xsl:apply-templates/></span></xsl:template>
    <xsl:template match="rs[@type='body']"><span class="body"><xsl:apply-templates/></span></xsl:template>
    <xsl:template match="persName"><span class="persName"><xsl:apply-templates/></span></xsl:template>
    <xsl:template match="placeName"><span class="placeName"><xsl:apply-templates/></span></xsl:template>
    <xsl:template match="p"><p class="prose"><xsl:apply-templates/><br/></p></xsl:template>
    <xsl:template match="floatingText"><div class="floating"><xsl:apply-templates/></div></xsl:template>
    <xsl:template match="floatingText[@type='song']"><div class="song"><xsl:apply-templates/></div></xsl:template>
    <xsl:template match="l"><xsl:apply-templates/><br/></xsl:template>
    
   

</xsl:stylesheet>
