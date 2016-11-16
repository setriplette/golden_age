<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" xmlns="http://www.w3.org/2000/svg"
    version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <!-- GLOBAL RULES -->
    <xsl:variable name="xSpacer" select="200"/>
    <xsl:variable name="ySpacer" select="8"/>
    <xsl:variable name="numBook" select="count(//div[@type='book'])"/>
    <xsl:variable name="max_xValue" select="$numBook * $xSpacer"/>
    <xsl:variable name="max_yValue" select="-(100) * $ySpacer"/>
    <xsl:template match="/">
        <svg width="850" height="850" viewBox="0 0 1200 1200">
            <g transform="translate(100 1000)">
                
                <xsl:comment>X-Axis</xsl:comment>
                <line x1="0" y1="0" x2="{$max_xValue + $xSpacer}" y2="0" stroke="black" stroke-width="2"/>
                <xsl:comment>Y-Axis</xsl:comment>
                <line x1="0" y1="0" x2="0" y2="{$max_yValue}" stroke="black" stroke-width="2"/>
                
                <xsl:comment>Title</xsl:comment>
                <text x="400" y="-850" text-anchor="middle" font-size="35px">Noun Emotions in The Pilgrim of Castile</text>
                <xsl:comment>X-Axis Label</xsl:comment>
                <xsl:for-each select="descendant::div[@type='book']">
                    <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <xsl:variable name="xName" select="head"/>
                    <text x="{$xPos}" y="30" text-anchor="middle" style="font-size:25px"><xsl:value-of select="$xName"/></text>
                </xsl:for-each>
                <text x="500" y="100" text-anchor="middle" style="font-size:35">Book</text>
                <xsl:for-each select="10, 20, 30, 40, 50, 60, 70, 80, 90, 100">
                    <xsl:comment>Y-Axis Label</xsl:comment>
                    <xsl:variable name="yAxis_HashLocation" select="$ySpacer * ."/>
                    <xsl:variable name="yAxis_HashName" select="."/>
                    <text x="-15" y="-{$yAxis_HashLocation}" text-anchor="middle" style="font-size:12"><xsl:value-of select="$yAxis_HashName"/></text>
                </xsl:for-each>
                <text x="-55" y="-400" text-anchor="middle" style="font-size:35px;writing-mode:tb;">Count of noun emotions</text>
                <xsl:for-each select="//div[@type='book']">
                    <xsl:variable name="numNoun" select="count(.//rs[@ana='noun']) * $ySpacer"/>
                        <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <line x1="{$xPos}" y1="0" x2="{$xPos}" y2="-{$numNoun}" stroke="yellow" stroke-width="100"/>
                </xsl:for-each>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>