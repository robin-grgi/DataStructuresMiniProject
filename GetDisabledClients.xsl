<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ls="http://www.example.org/LinguisticStay">
    <xsl:output method="text" indent="yes"/>
    <xsl:template match="/ls:root">
        [
        <xsl:for-each select="//ls:client[ls:isDisabled='true']"><xsl:sort select="ls:lastName"/>
            {
            "firstName" : "<xsl:value-of select="ls:firstName"/>",
            "lastName" : "<xsl:value-of select="ls:lastName"/>",
            "dateOfBirth" : "<xsl:value-of select="ls:dateOfBirth"/>",
            "email" : "<xsl:value-of select="ls:email"/>",
            "phone" : "<xsl:value-of select="ls:phone"/>",
            "isDisabled" : <xsl:value-of select="ls:isDisabled"/>
            }<xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>
        ]
    </xsl:template>
</xsl:stylesheet>
