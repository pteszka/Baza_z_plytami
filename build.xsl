<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
        <html>
            <body>
                <h2>ALBUMS</h2>
                    <xsl:for-each select="BAZA/ALBUM">
                        <ol>
                            <td><xsl:value-of select="@PUBLISHER"/></td>
                            <li><xsl:value-of select="ARTIST"/></li>
                            <li><xsl:value-of select="TITLE"/></li>
                            <li><xsl:value-of select="RELEASED"/></li>
                            <li><xsl:value-of select="TRACK_LIST/@LENGTH"/></li>
                            <ol>
                                <xsl:for-each select="TRACK_LIST/SONG">
                                    <li><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ol>
                        </ol>
                    </xsl:for-each>
                <h2>LABELS</h2>
                <tr bgcolor="#F2F8FD">
                    <th style="text-align:center">Name</th>
                    <th style="text-align:center">Formed</th>
                    <th style="text-align:center">Website</th>
                    <th style="text-align:center">Contact</th>
                </tr>
                <xsl:for-each select="BAZA/LABEL">
                    <tr>
                        <td><xsl:value-of select="@LAB_ID"/></td>
                        <td><xsl:value-of select="NAME"/></td>
                        <td><xsl:value-of select="FORMED"/></td>
                        <td><xsl:value-of select="WEBSITE"/></td>
                        <td><xsl:value-of select="CONTACT"/></td>
                    </tr>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
