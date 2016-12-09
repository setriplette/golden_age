<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <TEI>
            <teiHeader>
                <fileDesc>
                    
                    <titleStmt>
                        <title>La moza de cántaro</title>
                    </titleStmt>
                    <publicationStmt>
                        <p part="N">Lope de Vega</p>
                    </publicationStmt>
                    <sourceDesc default="false">
                        <p part="N">Information about the source</p>
                    </sourceDesc>
                </fileDesc>
            </teiHeader>
            <text>
                <body>
                    <xsl:comment>ST: Where the template has an @resp, fill in with a hashtag (#) followed by your initials, so I know who made the entry. There are instructions below for where to fit the person's name and sex into the template. In the note tag, you will write a description of the person. Make it brief, a sentence or so. For example, if the person is Apollo, &lt;note resp="#ST"&gt;Greco-Roman god of poetry and the sun&lt;/note&gt;. Notice I used my initials in the resp attribute.</xsl:comment>
                    <listPlace>
                        
                        
                        <xsl:for-each select="distinct-values(descendant::placeName)">
                            <xsl:comment><xsl:apply-templates select="."/></xsl:comment>
                            <xsl:comment>ST: Here we output the placename as written in Lope. When you record the place name, use the English version of the name, or if that does not exist, the Spanish name..</xsl:comment>
                            <place>
                                <placeName>
                                    <geo></geo>
                                </placeName>
                                
                                <xsl:comment>Inside the geo element, paste latitude (degrees N or S) and longitude values (degrees E or W) with a white space between. Find them by googling "placeName latitude longitude"</xsl:comment>
                                
                                
                                <note resp=""/>
                                <xsl:comment>ST: in the note, describe the place briefly</xsl:comment>
                            </place>

                        </xsl:for-each>
                    </listPlace>
                    
                </body>
            </text>
        </TEI>
    </xsl:template>

</xsl:stylesheet>
