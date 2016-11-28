<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="sp[@who='#Turín_boba']">
        <sp who="#Turín_boba" ana="m"><xsl:apply-templates/></sp>
        </xsl:template>
    
    <xsl:template match="sp[@who='#Leandro_boba']">
        <sp who="#Leandro_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Otavio_boba']">
        <sp who="#Otavio_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Miseno_boba']">
        <sp who="#Miseno_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Laurencio_boba']">
        <sp who="#Laurencio_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Duardo_boba']">
        <sp who="#Duardo_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Feniso_boba']">
        <sp who="#Feniso_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Rufino_boba']">
        <sp who="#Rufino_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Nise_boba']">
        <sp who="#Nise_boba" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Finea_boba']">
        <sp who="#Finea_boba" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Clara_boba']">
        <sp who="#Clara_boba" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Celia_boba']">
        <sp who="#Celia_boba" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Pedro_boba']">
        <sp who="#Pedro_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Músicos_boba']">
        <sp who="#Músicos_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Maestro_boba']">
        <sp who="#Maestro_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Liseo_boba']">
        <sp who="#Liseo_boba" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    
    <xsl:template match="l">
        <l><xsl:apply-templates/></l>
    </xsl:template>
    
</xsl:stylesheet>