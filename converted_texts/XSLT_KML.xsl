<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.opengis.net/kml/2.2"
    xmlns:gx="http://www.google.com/kml/ext/2.2"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <kml>
            <Document>
            <xsl:apply-templates select="descendant::place"/>
            </Document>
        </kml>
    </xsl:template>
    <xsl:template match="place">
        <Placemark>
            <name>
                <xsl:apply-templates select="placeName/text()"/>
            </name>
            <description>
<!-- RJP:2016-12-14: This gets us the descriptive notes from the places XML <xsl:apply-templates select="child::note"/>-->
                <xsl:apply-templates select="ancestor::TEI/child::teiHeader/descendant::title"/>
            </description>
            <Point>
                <coordinates>
                    <xsl:value-of select="descendant::geo/tokenize(., ' ')[2]"/>
                    <xsl:text>,</xsl:text>
                    <xsl:value-of select="descendant::geo/tokenize(., ' ')[1]"/>
                </coordinates>
            </Point>
        </Placemark>
    </xsl:template>
    <xsl:template match="text()">
        <xsl:value-of select="normalize-space(.)"/>
    </xsl:template>
</xsl:stylesheet>
