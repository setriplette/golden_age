<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="sp[@who='#Camilo_anzuelo']">
        <sp who="#Camilo_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Albano_anzuelo']">
        <sp who="#Albano_anzuelo" ana="m"><xsl:apply-templates/></sp>
        </xsl:template>
    
    <xsl:template match="sp[@who='#Fenisa_anzuelo']">
        <sp who="#Fenisa_anzuelo" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Celia_anzuelo']">
        <sp who="#Celia_anzuelo" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Lucindo_anzuelo']">
        <sp who="#Lucindo_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Tristán_anzuelo']">
        <sp who="#Tristán_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Criados_anzuelo']">
        <sp who="#Criados_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Dinarda_anzuelo']">
        <sp who="#Dinarda_anzuelo" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Bernardo_anzuelo']">
        <sp who="#Bernardo_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Fabio_anzuelo']">
        <sp who="#Fabio_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Osorio_anzuelo']">
        <sp who="#Osorio_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Campuzano_anzuelo']">
        <sp who="#Campuzano_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Trebiño_anzuelo']">
        <sp who="#Trebiño_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Orozco_anzuelo']">
        <sp who="#Orozco_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Félix_anzuelo']">
        <sp who="#Félix_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Donato_anzuelo']">
        <sp who="#Donato_anzuelo" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
   
    
    
    <xsl:template match="l">
        <l><xsl:apply-templates/></l>
    </xsl:template>
    
</xsl:stylesheet>