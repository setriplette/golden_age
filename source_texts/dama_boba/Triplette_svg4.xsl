<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <!-- The goal of this visualization is to compare the number of speeches of each character
   -->


    <xsl:variable name="xSpacer" select="50"/>

    <xsl:variable name="ySpacer" select="1"/>

    <xsl:variable name="max_Yval" select="-1200"/>
    <xsl:variable name="doc" select="doc('Dama_boba_tei.xml')"></xsl:variable>
    <!-- I have 1573 total speeches, and I am guessing that no one character has
        more than 500
    -->



    <xsl:template match="/">

        <svg width="1000" height="1100" viewBox="0 0 1000 1000">
            <g transform="translate(30, 500)">
                <!-- starting with a guess on transform translate -->
                <line x1="30" y1="0" x2="800" y2="0" stroke="black" stroke-width="1"/>
                <line x1="30" y1="0" x2="30" y2="-450" stroke="black" stroke-width="1"/>


                <text x="150" y="-400" fill="black" font-size="24" font-family="avenir">
                    Speeches by Character</text>
                <text x="200" y="-350" fill="purple" font-size="24" font-family="avenir">La dama
                    boba</text>
                <text x="250" y="-310" fill="black" font-size="14">Total speeches = 1573</text>
                <xsl:for-each select="distinct-values(//@who/string())">
                    <xsl:sort select="count($doc//sp[@who=current()])" order="descending"/> 
                    <xsl:variable name="string_sp" select="sum($doc//sp[@who=current()]/string-length())"/>
                    <xsl:comment><xsl:value-of select="$string_sp"/></xsl:comment>
                    
                    <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <xsl:variable name="yPos" select="count($doc//sp[@who=current()])"/>
                    <xsl:comment><xsl:value-of select="$yPos"/></xsl:comment>
                    <xsl:choose><xsl:when test="$doc//role[@xml:id=tokenize(current(), '#')[last()]]/@ana='f'"><line x1="{$xPos}" x2="{$xPos}" y1="0" y2="-{$yPos * $ySpacer}" stroke="maroon" stroke-width="30"/></xsl:when>
                        <xsl:otherwise><line x1="{$xPos}" x2="{$xPos}" y1="0" y2="-{$yPos * $ySpacer}" stroke="steelblue" stroke-width="30"/></xsl:otherwise></xsl:choose>
                    
                    <text anchor="{$xPos}" y="10" transform="translate({$xPos},15)rotate(45)" font-family="avenir"><xsl:value-of select="distinct-values($doc//sp[@who=current()]/speaker)"></xsl:value-of></text>
                
                </xsl:for-each>
                
            </g>
        </svg>
    </xsl:template>

</xsl:stylesheet>
