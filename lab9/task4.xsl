<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/group">
        <html>
            <head>
                <title>Практична робота 9</title>
                <style>
                    .high { font-weight: bold; }
                    .low { font-style: italic; }
                </style>
            </head>
            <body>
                <h2>Студенты з середнім балом</h2>
                <table border="1">
                    <tr>
                        <th>Прізвище</th>
                        <th>Ім'я</th>
                        <th>По-батькові</th>
                        <th>Середній бал</th>
                    </tr>
                    <xsl:for-each select="student">
                        <xsl:variable name="total" select="sum(predmet/@value)"/>
                        <xsl:variable name="count" select="count(predmet)"/>

                        <xsl:if test="$count > 0">
                            <xsl:variable name="average" select="$total div $count"/>
                            
                            <tr>
                                <td><xsl:value-of select="@fam"/></td>
                                <td><xsl:value-of select="@name"/></td>
                                <td><xsl:value-of select="@sname"/></td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="$average > 4">
                                            <span class="high"><xsl:value-of select="$average"/></span>
                                        </xsl:when>
                                        <!-- <xsl:when test="$average !> 3">
                                            <span class="low"><xsl:value-of select="$average"/></span>
                                        </xsl:when> -->
                                        <xsl:otherwise>
                                            <xsl:value-of select="$average"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
