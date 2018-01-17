<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="sp[@who='#alonso_olmedo']">
        <sp who="#alonso_olmedo" ana="m"><xsl:apply-templates/></sp>
        </xsl:template>
    
    <xsl:template match="sp[@who='#rodrigo_olmedo']">
        <sp who="#rodrigo_olmedo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#fernando_olmedo']">
        <sp who="#fernando_olmedo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#pedro_olmedo']">
        <sp who="#pedro_olmedo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#inés_olmedo']">
        <sp who="#inés_olmedo" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#leonor_olmedo']">
        <sp who="#leonor_olmedo" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#tello_olmedo']">
        <sp who="#tello_olmedo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#ana_olmedo']">
        <sp who="#ana_olmedo" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#fabia_olmedo']">
        <sp who="#fabia_olmedo" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#mendo_olmedo']">
        <sp who="#mendo_olmedo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#sombra_olmedo']">
        <sp who="#sombra_olmedo" ana="n"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#labrador_olmedo']">
        <sp who="#labrador_olmedo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#rey_olmedo']">
        <sp who="#rey_olmedo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#condestable_olmedo']">
        <sp who="#condestable_olmedo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#hombre1_olmedo']">
        <sp who="#hombre1_olmedo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#hombre2_olmedo']">
        <sp who="#hombre2_olmedo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    
    <xsl:template match="l">
        <l><xsl:apply-templates/></l>
    </xsl:template>
    
</xsl:stylesheet>