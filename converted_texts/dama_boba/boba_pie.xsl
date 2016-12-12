<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math ="http://www.w3.org/2005/xpath-functions/math"
    xmlns="http://www.w3.org/2000/svg"
    exclude-result-prefixes="xs math"
    version="2.0">
    <xsl:output method="xml" indent="yes"/> 
    
    <!-- The goal of this visualization is to compare the amount of speech for men and women
   -->


    
    

    
<!--    <xsl:variable name="doc" select="doc('Moza_tei.xml')"/>-->
   


    <xsl:template match="/">

        <svg width="100%" height="100%">
            <g transform="translate(300 300)">
                
                <text x="-150" y="-160" fill="black" font-size="24" font-family="avenir">Amount of speech by gender</text>
            <text x="-80" y="-200" fill="purple" font-size="24" font-family="avenir">La dama boba</text>
                <text x="200" y="-100" fill="black" font-size="20" font-family="avenir">Legend</text>
                <text x="95" y="70" fill="black" font-size="20" font-family="avenir">38%</text>
                <text x="-128" y="-70" fill="black" font-size="20" font-family="avenir">62%</text>
                <text x="200" y="-60" fill="maroon" font-size="20" font-family="avenir">Red = Female Speakers</text>
                <text x="200" y="-20" fill="steelblue" font-size="20" font-family="avenir">Blue = Male Speakers</text>
                <line x1="190" x2="430" y1="-130" y2="-130" stroke="black" stroke-width="1" fill="none"/>
                <line x1="190" x2="190" y1="-130" y2="5" stroke="black" stroke-width="1" fill="none"/>
                <line x1="190" x2="430" y1="5" y2="5" stroke="black" stroke-width="1" fill="none"/>
                <line x1="430" x2="430" y1="-130" y2="5" stroke="black" stroke-width="1" fill="none"/>
                <text x="-200" y="170" fill="purple" font-size="18" font-family="avenir">While Finea talks more than any other person in this play, the combination </text>
                <text x="-200" y="200" fill="purple" font-size="18" font-family="avenir">of her father. the male suitors, and the servants drowns out the women.</text>
                
            
            </g>
            
            
            
            <g transform="translate(300 300) rotate(-90)">
                
                <xsl:variable name="radius" select="100"/>


               
                <circle cx="0" cy="0" r="{$radius}" style="stroke:black; stroke-width:1; fill:none"/>
                
                <xsl:variable name="fString" select="sum(//sp[@ana='f']/l/string-length())" />
                <xsl:variable name="mString" select="sum(//sp[@ana='m']/l/string-length())"/>
                <xsl:variable name="totalString" select="sum(//sp[@ana]/l/string-length())"/>
                <xsl:comment>This should be the total string <xsl:value-of select="$totalString"/></xsl:comment>
                <xsl:comment>Total f string <xsl:value-of select="$fString"/></xsl:comment>
                <xsl:comment>Total m string <xsl:value-of select="$mString"/></xsl:comment>
                <xsl:variable name="femWedge" select="$fString div $totalString"/>
                <xsl:comment>This is femWedge <xsl:value-of select="$femWedge"/></xsl:comment>
                <xsl:variable name="manWedge" select="$mString div $totalString"/>
                <xsl:comment>This is manWedge <xsl:value-of select="$manWedge"/></xsl:comment>
                
                <!-- f string length 31310 -->
                <!-- m string length 37763
                <! total string length 69073-->
                
                
                <xsl:variable name="angle_manWedge" select="2 * math:pi() * $manWedge"/> 
                <xsl:comment>This is angle of manWedge in radians<xsl:value-of select="$angle_manWedge"/></xsl:comment>
                <!-- To take the x value for the third point on the wedge, cosine, y value is sine -->
                <xsl:variable name="x_manWedge" select="math:cos($angle_manWedge) * $radius"/> 
                <xsl:variable name="y_manWedge" select="math:sin($angle_manWedge) * $radius"/> 
                
                <xsl:variable name="angle_femWedge" select="$angle_manWedge + (2 * math:pi() * $femWedge)"/> 
                <xsl:comment>This is angle of femWedge in radians<xsl:value-of select="$angle_femWedge"/></xsl:comment>
                <!-- To take the x value for the third point on the wedge, cosine, y value is sine -->
                <xsl:variable name="x_femWedge" select="math:cos($angle_femWedge) * $radius"/> 
                <xsl:variable name="y_femWedge" select="math:sin($angle_femWedge) * $radius"/> 
                
                
                <path id="manWedge" d="M0,0
                    L {$radius},0
                    A{$radius},{$radius} 0, 1,1 {$x_manWedge},{$y_manWedge}
                    Z"
                    style="stroke:black; stroke-width:1; fill: steelblue"/>
                
                <!-- 0 is the short sweep flag and 1 is the long sweep flag, it's in the middle term-->
                <path id="femWedge" d="M0,0
                    L {$x_manWedge},{$y_manWedge}
                    A{$radius},{$radius} 0 0,1 {$x_femWedge},{$y_femWedge}
                    Z"
                    style="stroke:black; stroke-width:1; fill: maroon"/>
                
                
                

            </g>
        </svg>
    </xsl:template>

</xsl:stylesheet>
