<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>

    
    <!--X Axis variables-->
    <xsl:variable name="numChapters" select="count(//chapter)"/>
    
    <xsl:variable name="xSpacer" select="70"/>
    <xsl:variable name="max_Xval" select="$numChapters * $xSpacer"/>

    <!--Y Axis variables-->
    <xsl:variable name="maxSpeeches" select="max(//chapter/count(.//q[@sp = 'alice']))"/>
    <!--ebb: Reading from the inside out, this takes a count of quotes by Alice inside each chapter, 
        and then finds the maximum value of those counts. I need to know this to calculate my Y axis.-->
    <xsl:variable name="ySpacer" select="10"/>
   
    <xsl:variable name="max_Yval" select="$maxSpeeches * $ySpacer"/>
    
    

    <xsl:template match="/">

        <svg width="850" height="850" viewBox="0 0 1000 1000">
            

            <g transform="translate(50 750)">
               
                <xsl:comment>The total number of chapters is <xsl:value-of select="$numChapters"/>.
         The max X value is <xsl:value-of select="$max_Xval"/></xsl:comment>
                <xsl:comment>The max count of speeches is: <xsl:value-of select="$maxSpeeches"/> 
          The max Y value is: <xsl:value-of select="$max_Yval"/></xsl:comment>

                
                <!--X axis-->
                <line x1="30" y1="-10" x2="{$max_Xval + $xSpacer}" y2="-10" stroke="black"
                    stroke-width="1"/>
                <!--Y axis-->
                <line x1="30" y1="0" x2="30" y2="{-$max_Yval - 100}" stroke="black"
                    stroke-width="1"/>

                <!--Calculate Hash Marks on Y Axis-->
                <xsl:for-each select="1 to 7">
                    <xsl:variable name="yAxis_HashLocator" select=". * 100"/>
                    <xsl:variable name="yAxis_HashName" select=". * 10"/>
                    <text x="15" y="-{$yAxis_HashLocator}" text-anchor="middle">
                        <xsl:value-of select="$yAxis_HashName"/>
                    </text>

                    <line x1="30" x2="{$max_Xval + $xSpacer}" y1="{-$yAxis_HashLocator}"
                        y2="{-$yAxis_HashLocator}" stroke="green" stroke-width=".5"
                        stroke-dasharray="10"/>
                </xsl:for-each>

                <!--Working chapter by chapter...start with chapter hashes on X axis...-->
                <xsl:for-each select="descendant::chapter">
                    <xsl:variable name="xPos" select="@which * $xSpacer"/>

                    <text x="{$xPos}" y="15" text-anchor="end" transform="rotate(-45 {$xPos}, 15)">
                        Ch. <xsl:value-of select="@which"/>
                    </text>

                </xsl:for-each>
                <xsl:for-each select="descendant::chapter">
                    <xsl:variable name="xPos" select="@which * $xSpacer"/>
                    <xsl:variable name="yPos" select="(count(.//q[@sp = 'alice'])) * $ySpacer"/>
                    <circle cx="{$xPos}" cy="-{$yPos}" r="5" fill="red"/>
                    
       
                    <xsl:if test="preceding::chapter">
                    <xsl:variable name="xPos" select="@which * $xSpacer"/>
                    <xsl:variable name="yPos" select="(count(.//q[@sp = 'alice'])) * $ySpacer"/>
                    <xsl:variable name="precY" select="count(preceding::chapter[1]//q[@sp = 'alice']) * $ySpacer"/>
                    <xsl:variable name= "precX" select="preceding::chapter[1]/@which * $xSpacer"/>
                        <line x1="{$xPos}" y1="-{$yPos}" x2="{$precX}" y2="-{$precY}" stroke="red" stroke-width="3"/></xsl:if>
                    
                </xsl:for-each>

            </g>
        </svg>
        
    

    </xsl:template>

</xsl:stylesheet>
