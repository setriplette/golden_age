<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="sp[@who='#inés_peri']">
        <sp who="#inés_peri" ana="f"><xsl:apply-templates/></sp>
        </xsl:template>
    
    <xsl:template match="sp[@who='#costanza_peri']">
        <sp who="#costanza_peri" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#casilda_peri']">
        <sp who="#casilda_peri" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#peribáñez_peri']">
        <sp who="#peribáñez_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#bartolo_peri']">
        <sp who="#bartolo_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#comendador_peri']">
        <sp who="#comendador_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#blas_peri']">
        <sp who="#blas_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#marín_peri']">
        <sp who="#marín_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#luján_peri']">
        <sp who="#luján_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#leonardo_peri']">
        <sp who="#leonardo_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#rey_peri']">
        <sp who="#rey_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#reina_peri']">
        <sp who="#reina_peri" ana="f"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#condestable_peri']">
        <sp who="#condestable_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#paje_peri']">
        <sp who="#paje_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#secretario_peri']">
        <sp who="#secretario_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#regidor_peri']">
        <sp who="#regidor_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#gómez_peri']">
        <sp who="#gómez_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#cura_peri']">
        <sp who="#cura_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#gil_peri']">
        <sp who="#gil_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#antón_peri']">
        <sp who="#antón_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#benito_peri']">
        <sp who="#benito_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#mendo_peri']">
        <sp who="#mendo_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#llorente_peri']">
        <sp who="#llorente_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#chaparro_peri']">
        <sp who="#chaparro_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#helipe_peri']">
        <sp who="#helipe_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#belardo_peri']">
        <sp who="#belardo_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#pintor_peri']">
        <sp who="#pintor_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#músico_peri']">
        <sp who="#músico_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    <xsl:template match="sp[@who='#segador_peri']">
        <sp who="segador_peri" ana="m"><xsl:apply-templates/></sp>
    </xsl:template>
    
    
    
    
    <xsl:template match="l">
        <l><xsl:apply-templates/></l>
    </xsl:template>
    
</xsl:stylesheet>