<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/group">
        <html>
            <head>
                <title>Практична робота 9</title>
            </head>
            <body>
                <h2>Студенти з двійками</h2>
                <table border="1">
                    <tr>
                        <th>Прізвище</th>
                        <th>Ім'я</th>
                        <th>По-батькові</th>
                        <th>Предмет</th>
                        <th>Оцінка</th>
                    </tr>
                    <xsl:for-each select="student">
                        <xsl:if test="predmet[@value='2']">
                            <tr>
                                <td><xsl:value-of select="@fam"/></td>
                                <td><xsl:value-of select="@name"/></td>
                                <td><xsl:value-of select="@sname"/></td>
                                <td>
                                    <xsl:for-each select="predmet[@value='2']">
                                        <xsl:value-of select="@name"/>
                                        <xsl:if test="position() != last()">, </xsl:if>
                                    </xsl:for-each>
                                </td>
                                <td>2</td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
