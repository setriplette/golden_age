<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <TEI>
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title>The Pilgrim of Castile</title>
                    </titleStmt>
                    <publicationStmt>
                        <p part="N">Publication Information</p>
                    </publicationStmt>
                    <sourceDesc default="false">
                        <p part="N">Information about the source</p>
                    </sourceDesc>
                </fileDesc>
            </teiHeader>
            <text>
                <body>
                    <listPlace>
                        <xsl:for-each select="distinct-values(descendant::placeName)">
                            <place>
                                <placeName>
                                    <xsl:apply-templates select="."/>
                                </placeName>
                                <note resp=""/>
                            </place>
                        </xsl:for-each>
                    </listPlace>
                </body>
            </text>
        </TEI>
    </xsl:template>
</xsl:stylesheet>