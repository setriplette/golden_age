<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <!-- The goal of this visualization is to output the uses of body and emotion for each character.
   -->


    <xsl:variable name="xSpacer" select="50"/>

    <xsl:variable name="ySpacer" select="5"/>

    <xsl:variable name="max_Yval" select="-1000"/>
    <xsl:variable name="doc" select="doc('Dama_boba_tei.xml')"/>
    <!-- I have 1573 total speeches, and I am guessing that no one character has
        more than 500
    -->



    <xsl:template match="/">

        <svg width="500" height="500" viewBox="0 0 1000 1000">
            <g transform="translate(30, 500)">
                <!-- starting with a guess on transform translate -->
                


                <!--<text x="100" y="-400" fill="black" font-size="32" font-family="avenir">Language of
                    body and emotion</text>-->
                <text x="265" y="-380" fill="purple" font-size="32" font-family="avenir">NISE</text>
                <xsl:variable name="yPos_bod" select="count($doc//rs[@type='body'][ancestor::sp[@who='#Nise_boba']])"/>
                <line x1="200" y1="0" x2="200" y2="{-$yPos_bod * $ySpacer}" stroke="#D1B2F0" stroke-width="120"/>
                <text x="160" y="40" fill="black" font-size="32" font-family="avenir">body</text>
                <text x="180" y="{-$yPos_bod * $ySpacer - 10}" fill="black" font-size="32" font-family="avenir"><xsl:value-of select="count($doc//rs[@type='body'][ancestor::sp[@who='#Nise_boba']])"/></text>
                
                <xsl:variable name="yPos_emo" select="count($doc//rs[@type='emotion'][ancestor::sp[@who='#Nise_boba']])"/>
                <line x1="430" y1="0" x2="430" y2="{-$yPos_emo * $ySpacer}" stroke="#E69980" stroke-width="120"/>
                <text x="380" y="40" fill="black" font-size="32" font-family="avenir">emotion</text>
                <text x="410" y="{-$yPos_emo * $ySpacer - 10}" fill="black" font-size="32" font-family="avenir"><xsl:value-of select="count($doc//rs[@type='emotion'][ancestor::sp[@who='#Nise_boba']])"/></text>
                
                
                
                <line x1="80" y1="0" x2="550" y2="0" stroke="black" stroke-width="1"/>
                <line x1="80" y1="0" x2="80" y2="-450" stroke="black" stroke-width="1"/>
                <line x1="80" y1="-450" x2="550" y2="-450" stroke="black" stroke-width="1"/>
                <line x1="550" y1="0" x2="550" y2="-450" stroke="black" stroke-width="1"/>

                
                


            </g>
        </svg>
    </xsl:template>

</xsl:stylesheet>
