<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ls="http://www.example.org/LinguisticStay">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>

    <xsl:template match="/">
        <html>
            <head>
                <META http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                <link rel="stylesheet" type="text/css" href="styles.css"/>
                <title>Accessible Linguistic Stays</title>
            </head>
            <body>
                <h1>Accessible Linguistic Stays</h1>
                <table border="1">
                    <tr>
                        <th>Stay ID</th>
                        <th>Linguistic Facility</th>
                        <th>Location</th>
                        <th>Type</th>
                        <th>Public</th>
                        <th>Destination</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                    </tr>
                    <xsl:apply-templates select="//ls:stay[ls:disabilitiesAdapted='true']"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ls:stay">
        <tr>
            <td>
                <xsl:value-of select="@id"/>
            </td>
            <td>
                <xsl:value-of select="../ls:name"/>
            </td>
            <td>
                <xsl:value-of select="../ls:location"/>
            </td>
            <td>
                <xsl:value-of select="ls:type"/>
            </td>
            <td>
                <xsl:value-of select="ls:public"/>
            </td>
            <td>
                <xsl:value-of select="ls:destination"/>
            </td>
            <td>
                <xsl:value-of select="ls:startDate"/>
            </td>
            <td>
                <xsl:value-of select="ls:endDate"/>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
