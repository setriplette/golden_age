<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="sp[@who='#leonida_juez']">
        <sp who="#leonida_juez" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#albano_juez']">
        <sp who="#albano_juez" ana="m"><xsl:apply-templates/></sp>
        </xsl:template>
    
    <xsl:template match="sp[@who='#octavio_juez']">
        <sp who="#octavio_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#fabia_juez']">
        <sp who="#fabia_juez" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#florelo_juez']">
        <sp who="#florelo_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#ergasto_juez']">
        <sp who="#ergasto_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#silvano_juez']">
        <sp who="#silvano_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#clavela_juez']">
        <sp who="#clavela_juez" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#rosardo_juez']">
        <sp who="#rosardo_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#fineo_juez']">
        <sp who="#fineo_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#lirano_juez']">
        <sp who="#lirano_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#tiberio_juez']">
        <sp who="#tiberio_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#arminda_juez']">
        <sp who="#arminda_juez" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#reinaldo_juez']">
        <sp who="#reinaldo_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#fabio_juez']">
        <sp who="#fabio_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#feniso_juez']">
        <sp who="#feniso_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#floro_juez']">
        <sp who="#floro_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#lucindo_juez']">
        <sp who="#lucindo_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#capitán_juez']">
        <sp who="#capitán_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#piloto_juez']">
        <sp who="#piloto_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#eliso_juez']">
        <sp who="#eliso_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#ricardo_juez']">
        <sp who="#ricardo_juez" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
   
    
    
    <xsl:template match="l">
        <l><xsl:apply-templates/></l>
    </xsl:template>
    
</xsl:stylesheet>