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
                <title>La moza de cántaro</title>
                <link rel="stylesheet" type="text/css" href="reading_views.css"/>
            </head>
            <body>
                <h1>La moza de cántaro</h1>
                <h2>Lope de Vega</h2>
                <table>
                    <tr>
                        <!--<th>Character</th>
                        <th>Role</th>
                        <th>ID</th>-->
                    </tr>
                    <xsl:apply-templates select="descendant::castList"/>
                </table>
                <hr/>
                

                <div id="main">
                    <xsl:apply-templates select="//body"/>
                </div>





            </body>

        </html>
    </xsl:template>
    <xsl:template match="castList">
        <xsl:for-each select="castItem">
            <tr>
                <td>
                    <xsl:apply-templates select=".//role"/>
                </td>
                <td>
                    <xsl:apply-templates select=".//roleDesc"/>
                </td>
                <td>
                    <xsl:text>#</xsl:text>
                    <xsl:apply-templates select=".//role/@xml:id"/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="stage">
        <xsl:choose>
            <xsl:when test=".[@type = 'aside']">
                <span class="aside"/>
            </xsl:when>
            <xsl:otherwise>
                <span class="stage">
                    <xsl:apply-templates/>
                </span>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>
    <xsl:template match="speaker">
        <xsl:choose>
            <xsl:when test=".[contains(., 'MARÍA')]">
                <span class="protagonist">
                    <xsl:apply-templates/>
                </span>
            </xsl:when>
            <xsl:otherwise>
                <span class="character">
                    <xsl:apply-templates/>
                </span>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="sp">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="l">
        <span class="line">
            <xsl:apply-templates/>
        </span>
        <span class="ln">
            <xsl:value-of select="count(preceding::l) + 1"/>
        </span>
        <br/>
    </xsl:template>
    <xsl:template match="div[@type = 'act']">
        <span class="act">
            <xsl:text>Acto </xsl:text>
            <xsl:value-of select="./@n"/>
        </span><br/>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="sp//stage"><span class="aside"><xsl:apply-templates/></span></xsl:template>

</xsl:stylesheet>
