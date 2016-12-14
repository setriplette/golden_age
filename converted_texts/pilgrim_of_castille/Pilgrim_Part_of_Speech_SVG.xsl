<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <xsl:output method="xml" indent="yes"/>
    <!-- GLOBAL RULES -->
    <xsl:variable name="xSpacer" select="100"/>
    <xsl:variable name="ySpacer" select="5"/>
    <xsl:variable name="numB" select="count(//div[@type='book'])"/>
    <xsl:variable name="max_xValue" select="$xSpacer * $numB"/>
    <xsl:variable name="max_yValue" select="-(100 * $ySpacer)"/>
    <xsl:template match="/">
        <svg width="850" height="850" viewBox="0 0 1000 1000">
            <g transform="translate(100 750)">
                <xsl:for-each select="descendant::div[@type='book']/head">
                    <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <xsl:variable name="xName" select="."/>
                    <text x="{$xPos}" y="15" text-anchor="end" transform="rotate(-45 {$xPos}, 15)" style="font-size:20px" font-family="Avenir"><xsl:value-of select="$xName"/></text>
                </xsl:for-each>
                <text color="black" font-family="CenturyGothic" text-anchor="middle" x="400" y="-650" style="font-size:32px">Emotions: Different Parts of Speech</text>
                <text color="black" font-family="CenturyGothic" text-anchor="middle" x="400" y="-600" style="font-size:32px">Pilgrim of Castile</text>
                <text y="-250" x="-15" color="black" font-family="CenturyGothic" text-anchor="middle" style="font-size:18px">50%</text>
                <text y="-500" x="-15" color="black" font-family="CenturyGothic" text-anchor="middle" style="font-size:18px">100%</text>
                <text x="600" y="-500" font-size="25px" font-family="CenturyGothic">Legend: Part of Speech</text>
                <text x="650" y="-450" text-anchor="start" font-size="23px" fill="maroon" font-family="Avenir">-Noun</text>
                <text x="650" y="-400" text-anchor="start" font-size="23px" fill="steelblue" font-family="Avenir">-Verb</text>
                <text x="650" y="-350" text-anchor="start" font-size="23px" fill="#e8c135" font-family="Avenir">-Adverb</text>
                <text x="650" y="-300" text-anchor="start" font-size="23px" fill="#666699" font-family="Avenir">-Adjective</text>
                <xsl:comment>X-axis</xsl:comment>
                <line x1="30" y1="0" x2="{$max_xValue + $xSpacer}" y2="0" stroke="black" stroke-width="2"/>
                <xsl:comment>Y-axis</xsl:comment>
                <line x1="30" y1="0" x2="30" y2="{$max_yValue}" stroke="black" stroke-width="2"/>
                <xsl:for-each select="//div[@type='book']">
                    <xsl:variable name="noun" select="count(.//rs[@ana='noun'])"/>
                    <xsl:variable name="verb" select="count(.//rs[@ana='verb'])"/>
                    <xsl:variable name="adverb" select="count(.//rs[@ana='adverb'])"/>
                    <xsl:variable name="adj" select="count(.//rs[@ana='adj'])"/>
                    <xsl:variable name="sumRS" select="count(.//rs[@type='emotion'])"/>
                    <xsl:variable name="nounPerc" select="($noun div $sumRS * 100) * $ySpacer"/>
                    <xsl:variable name="verbPerc" select="($verb div $sumRS * 100) * $ySpacer"/>
                    <xsl:variable name="adverbPerc" select="($adverb div $sumRS * 100) * $ySpacer"/>
                    <xsl:variable name="adjPerc" select="($adj div $sumRS * 100) * $ySpacer"/>
                    <xsl:variable name="xPos" select="position()*$xSpacer"/>
                    <xsl:variable name="verbY2pos" select="$verbPerc + $nounPerc"/>
                    <xsl:variable name="adverbY1pos" select="$verbPerc + $nounPerc"/>
                    <xsl:variable name="adverbY2pos" select="$verbPerc + $nounPerc + $adverbPerc"/>
                    <xsl:variable name="adjY1pos" select="$verbPerc + $nounPerc + $adverbPerc"/>
                    <xsl:variable name="adjY2pos" select="$verbPerc + $nounPerc + $adverbPerc + $adjPerc"/>
                    <xsl:variable name="nounPERC" select="$noun div $sumRS * 100"/>
                    <xsl:variable name="verbPERC" select="$verb div $sumRS * 100"/>
                    <xsl:variable name="adverbPERC" select="$adverb div $sumRS * 100"/>
                    <xsl:variable name="adjPERC" select="$adj div $sumRS * 100"/>
                    <line class ="noun" x1="{$xPos}" y1="0" x2="{$xPos}" y2="-{$nounPerc}" stroke="maroon" stroke-width="50"/>
                    <text x="{$xPos}" y="-{$nounPerc div 2}" text-anchor="middle" stroke="white"><xsl:value-of select="format-number($nounPERC, '0')"/><xsl:text>%</xsl:text></text>
                    <line class="verb" x1="{$xPos}" y1="-{$nounPerc}" x2="{$xPos}" y2="-{$verbY2pos}" stroke="steelblue" stroke-width="50"/>
                    <text x="{$xPos}" y="-{($verbPerc div 2) + $nounPerc}" text-anchor="middle" stroke="white"><xsl:value-of select="format-number($verbPERC, '0')"/><xsl:text>%</xsl:text></text>
                    <line class="adverb" x1="{$xPos}" y1="-{$adverbY1pos}" x2="{$xPos}" y2="-{$adverbY2pos}" stroke="#e8c135" stroke-width="50"/>
                    <text x="{$xPos + 50}" y="-{($adverbPerc div 2) + $adverbY1pos}" text-anchor="middle" stroke="black"><xsl:value-of select="format-number($adverbPERC, '0')"/><xsl:text>%</xsl:text></text>
                    <line x1="{$xPos}" y1="-{($adverbPerc div 2) + $adverbY1pos}" x2="{$xPos + 35}" y2="-{($adverbPerc div 2) + $adverbY1pos}" stroke="black" stroke-width="2" stroke-dasharray="0.8"/>
                    <line class="adj" x1="{$xPos}" y1="-{$adjY1pos}" x2="{$xPos}" y2="-{$adjY2pos}" stroke="#666699" stroke-width="50"/>
                    <text x="{$xPos}" y="-{($adjPerc div 2) + $adjY1pos}" text-anchor="middle" stroke="white"><xsl:value-of select="format-number($adjPERC, '0')"/><xsl:text>%</xsl:text></text>
               </xsl:for-each>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>