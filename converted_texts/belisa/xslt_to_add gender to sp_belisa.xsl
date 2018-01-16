<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="sp[@who='#lucinda_belisa']">
        <sp who="#lucinda_belisa" ana="f"><xsl:apply-templates/></sp>
        </xsl:template>
    
    <xsl:template match="sp[@who='#belisa_belisa']">
        <sp who="#belisa_belisa" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#finea_belisa']">
        <sp who="#finea_belisa" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='celia_belisa']">
        <sp who="#celia_belisa" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#fabia_belisa']">
        <sp who="#fabia_belisa" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#juan_belisa']">
        <sp who="#juan_belia" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#tello_belisa']">
        <sp who="#tello_belia" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#octavio_belisa']">
        <sp who="#octavio_belisa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#julio_belisa']">
        <sp who="#julio_belisa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#conde_belisa']">
        <sp who="#conde_belisa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#fernando_belisa']">
        <sp who="#fernando_belisa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#músicos_belisa']">
        <sp who="#músicos_belisa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
   
    
  
    
</xsl:stylesheet>