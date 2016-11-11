<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="sp[speaker[text()=//role/text()]]">
        <sp who="#{ancestor::TEI/text//role[text()=current()/speaker/text()]/@xml:id}"><xsl:apply-templates/></sp>
        
    </xsl:template>
    <xsl:template match="l">
        <l><xsl:apply-templates/></l>
    </xsl:template>
    
</xsl:stylesheet>