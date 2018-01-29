<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="sp[@who='#elvira_labrador']">
        <sp who="#elvira_labrador" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#celia_labrador']">
        <sp who="#celia_labrador" ana="f"><xsl:apply-templates/></sp>
        </xsl:template>
    
    <xsl:template match="sp[@who='#rey_labrador']">
        <sp who="#rey_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#zaide_labrador']">
        <sp who="#zaide_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#audalla_labrador']">
        <sp who="#audalla_labrador" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#manrique_labrador']">
        <sp who="#manrique_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#doristo_labrador']">
        <sp who="#doristo_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#alfonso_labrador']">
        <sp who="#alfonso_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#lauro_labrador']">
        <sp who="#lauro_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#leonor_labrador']">
        <sp who="#leonor_labrador" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#fileno_labdrador']">
        <sp who="#fileno_labdrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#zulema_labrador']">
        <sp who="#zulema_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#feliciano_labrador']">
        <sp who="#feliciano_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#filandro_labrador']">
        <sp who="#filandro_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#liseo_labrador']">
        <sp who="#liseo_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#riselo_labrador']">
        <sp who="#riselo_labrador" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
   
    
    
    <xsl:template match="l">
        <l><xsl:apply-templates/></l>
    </xsl:template>
    
</xsl:stylesheet>