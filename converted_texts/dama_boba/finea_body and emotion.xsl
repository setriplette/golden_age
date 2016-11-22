<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <!-- The goal of this visualization is to output the uses of body and emotion for each character.
   -->


    <xsl:variable name="xSpacer" select="50"/>

    <xsl:variable name="ySpacer" select="20"/>

    <xsl:variable name="max_Yval" select="-1000"/>
    <xsl:variable name="doc" select="doc('Dama_boba_tei.xml')"/>
    <!-- I have 1573 total speeches, and I am guessing that no one character has
        more than 500
    -->



    <xsl:template match="/">

        <svg width="1000" height="1100" viewBox="0 0 1000 1000">
            <g transform="translate(30, 500)">
                <!-- starting with a guess on transform translate -->
                


                <text x="100" y="-400" fill="black" font-size="32" font-family="avenir">Language of
                    body and emotion</text>
                <text x="270" y="-350" fill="purple" font-size="32" font-family="avenir">FINEA</text>
                <xsl:variable name="yPos_emo" select="count($doc//rs[@type='emotion'][ancestor::sp[@who='#Finea_boba']])"/>
                <line x1="200" y1="0" x2="200" y2="{-$yPos_emo * $ySpacer}" stroke="#E69980" stroke-width="120"/>
                
                <xsl:variable name="yPos_bod" select="count($doc//rs[@type='body'][ancestor::sp[@who='#Finea_boba']])"/>
                <line x1="430" y1="0" x2="430" y2="{-$yPos_bod * $ySpacer}" stroke="#D1B2F0" stroke-width="120"/>
                
                <!-- stroke attribute is thing to toggle, of the whole g element this.style.stroke='red'; remove
                with querySelectorAll to find any that has stroke=red-->
                
                <line x1="30" y1="0" x2="600" y2="0" stroke="black" stroke-width="1"/>
                <line x1="30" y1="0" x2="30" y2="-450" stroke="black" stroke-width="1"/>

                
                


            </g>
        </svg>
    </xsl:template>

</xsl:stylesheet>
