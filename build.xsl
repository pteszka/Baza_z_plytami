<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
                <div class="center">
                <h2 class="albumsTitle">ALBUMS</h2>
                    <xsl:for-each select="BAZA/ALBUM">
                        <div class="album">
                        <p class="title"><xsl:value-of select="TITLE"/></p>
                        <ul>
                            <li><xsl:value-of select="@PUBLISHER"/></li>
                            <li><xsl:value-of select="ARTIST"/></li>
                            <li><xsl:value-of select="RELEASED"/></li>
                            <li><xsl:value-of select="TRACK_LIST/@LENGTH"/></li>
                            <p class="trackList">TRACK LIST:</p>
                            <ol>
                                <xsl:for-each select="TRACK_LIST/SONG">
                                    <li><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ol>
                            <p class="genres">GENRES:</p>
                            <ul>
                                <p class="primary">PRIMARY</p>
                                <xsl:for-each select="GENRES/PRIMARY">
                                    <li class="primary"><xsl:value-of select="."/></li>
                                </xsl:for-each>
                                <xsl:if test="GENRES/SECONDARY">
                                    <p class="secondary">SECONDARY</p>
                                </xsl:if>
                                <xsl:for-each select="GENRES/SECONDARY">
                                        <li class="secondary"><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ul>
                        </ul>
                        </div>
                    </xsl:for-each>
                </div>
                <br/>
                <h2 class="label">LABELS</h2>
                <tr bgcolor="#D2691E">
                    <th style="text-align:center; background: #BDB76B;">Label nr</th>
                    <th style="text-align:center; background: #BDB76B;">Name</th>
                    <th style="text-align:center; background: #BDB76B;r">Formed</th>
                    <th style="text-align:center; background: #BDB76B;">Website</th>
                    <th style="text-align:center; background: #BDB76B;">Contact</th>
                </tr>
                <xsl:for-each select="BAZA/LABEL">
                    <tr>
                        <td class="id"><xsl:value-of select="@LAB_ID"/></td>
                        <td class="name"><xsl:value-of select="NAME"/></td>
                        <td class="formed"><xsl:value-of select="FORMED"/></td>
                        <td class="website"><xsl:value-of select="WEBSITE"/></td>
                        <td class="contact"><xsl:value-of select="CONTACT"/></td>
                    </tr>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
