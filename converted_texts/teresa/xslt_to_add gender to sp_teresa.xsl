<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="sp[@who='#Diego_teresa']">
        <sp who="#diego_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Ramiro_teresa']">
        <sp who="#ramiro_teresa" ana="m"><xsl:apply-templates/></sp>
        </xsl:template>
    
    <xsl:template match="sp[@who='#Leonido_teresa']">
        <sp who="#leonido_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Floro_teresa']">
        <sp who="#floro_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Teresa_teresa']">
        <sp who="#teresa_teresa" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Alonso_teresa']">
        <sp who="#alonso_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Lebrija_teresa']">
        <sp who="#lebrija_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Amor_teresa']">
        <sp who="#amor_teresa" ana="n"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Justicia_teresa']">
        <sp who="#justicia_teresa" ana="n"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#valle_teresa']">
        <sp who="#valle_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Petrona_teresa']">
        <sp who="#petrona_teresa" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#abadesa_teresa']">
        <sp who="#abadesa_teresa" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#sacristán_teresa']">
        <sp who="#sacristán_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Juan_teresa']">
        <sp who="#juan_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#Juana_teresa']">
        <sp who="#juana_teresa" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#fraile_teresa']">
        <sp who="#fraile_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#luzbel_teresa']">
        <sp who="#luzbel_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#astarot_teresa']">
        <sp who="#astarot_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#joseph_teresa']">
        <sp who="#joseph_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#miguel_teresa']">
        <sp who="#miguel_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#pedro_teresa']">
        <sp who="#pedro_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#pablo_teresa']">
        <sp who="#pablo_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#niño_teresa']">
        <sp who="#niño_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#mariano_teresa']">
        <sp who="#mariano_teresa" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#música_teresa']">
        <sp who="#música_teresa" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
   
    
    
    <xsl:template match="l">
        <l><xsl:apply-templates/></l>
    </xsl:template>
    
</xsl:stylesheet>