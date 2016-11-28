<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0"><link rel="stylesheet" type="text/css" href="style.css"/>
    <html>
        <h1><xsl:template match=".//">
        <xsl:apply-templates select="descendant::titleStmt">
        </xsl:apply-templates>
        <xsl:apply-templates select="descendant::text">
        </xsl:apply-templates>
    </xsl:template></h1>
    <h2><xsl:template match="//text">
        <xsl:apply-templates select="descendant::castItem">
        </xsl:apply-templates>
        <xsl:apply-templates select="role">
        </xsl:apply-templates>
    </xsl:template></h2>
        <h3><xsl:template match="//body">
            <xsl:apply-templates select="div[@type='act']">
            </xsl:apply-templates>
        </xsl:template></h3>
    </html>
</xsl:stylesheet>