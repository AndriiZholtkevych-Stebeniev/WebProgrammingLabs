<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/book">
        <html>
            <head>
                <title>Книга</title>
                <style>
                    body { font-family: Arial, sans-serif; padding: 20px; background-color: #f4f4f4; }
                    h2, h3 { color: #333; font-size: 20px; }
                    .page { 
                        border: 1px solid #ccc; 
                        margin: 0 auto 20px; 
                        padding: 10px; 
                        background-color: #fff; 
                        max-width: 600px; 
                    }
                    .header { display: flex; justify-content: space-between; }
                    img { 
                        width: 100%; 
                        height: auto; 
                        display: block; 
                        margin: 0 auto; 
                    }
                    .caption { text-align: center; margin-top: 5px; } 
                    .separator { border-top: 1px solid #000; margin: 10px 0; }
                    .paragraph { margin: 10px 0; text-indent: 20px; } 
                </style>
            </head>
            <body>
                <xsl:for-each select="page">
                    <div class="page">
                        <div class="header">
                            <h2><xsl:value-of select="pageNumber"/></h2>
                            <h3><xsl:value-of select="topic"/></h3>
                        </div>
                        <div class="separator"><xsl:value-of select="separator"/></div>
                        <xsl:for-each select="content/*">
                            <xsl:choose>
                                <xsl:when test="name() = 'paragraph'">
                                    <p class="paragraph">
                                        <xsl:apply-templates select="node()"/>
                                    </p>
                                </xsl:when>
                                <xsl:when test="name() = 'strong'">
                                    <strong><xsl:value-of select="."/></strong>
                                </xsl:when>
                                <xsl:when test="name() = 'image'">
                                    <img src="{@src}" alt="{@alt}"/>
                                </xsl:when>
                                <xsl:when test="name() = 'caption'">
                                    <p class="caption"><i><xsl:value-of select="."/></i></p>
                                </xsl:when>
                            </xsl:choose>
                        </xsl:for-each>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
