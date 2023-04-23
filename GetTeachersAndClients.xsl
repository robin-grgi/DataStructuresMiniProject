<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ls="http://www.example.org/LinguisticStay">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="/ls:root">
        <participants>
            <xsl:apply-templates select="//ls:client"/>
            <xsl:apply-templates select="//ls:teacher"/>
        </participants>
    </xsl:template>

    <xsl:template match="ls:client">
        <participant type="client">
            <xsl:apply-templates select="ls:firstName | ls:lastName | ls:dateOfBirth | ls:email | ls:phone | ls:isDisabled"/>
        </participant>
    </xsl:template>

    <xsl:template match="ls:teacher">
        <participant type="teacher">
            <xsl:apply-templates select="ls:firstName | ls:lastName | ls:dateOfBirth | ls:email | ls:phone | ls:isDisabled"/>
        </participant>
    </xsl:template>

    <xsl:template match="ls:firstName | ls:lastName | ls:dateOfBirth | ls:email | ls:phone | ls:isDisabled">
        <xsl:element name="{local-name()}">
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
