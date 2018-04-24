<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" version="1.0" indent="yes"/>
    <xsl:strip-space elements="*"/> 
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="arrangement[not(p)]"/>
    <xsl:template match="bioghist[not(p)]"/>
    <xsl:template match="scopecontent[not(p)]"/>
    <xsl:template match="relatedmaterial[not(p)]"/>
    <xsl:template match="appraisal[not(p)]"/>
    <xsl:template match="accessrestrict[not(p)]"/>
    <xsl:template match="processinfo[not(p)]"/>
    <xsl:template match="acqinfo[not(p)]"/>
    <xsl:template match="custodhist[not(p)]"/>
    <xsl:template match="odd[not(p)]"/>
    <xsl:template match="controlaccess[not(subject or persname or corpname)]"/>
</xsl:stylesheet>