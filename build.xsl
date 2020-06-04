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
                    <table id="albums">
                        <tr bgcolor="#D2691E">
                            <th style="text-align:center; background: #BDB76B;">Publisher</th>
                            <th style="text-align:center; background: #BDB76B;">Artist</th>
                            <th style="text-align:center; background: #BDB76B;">Type</th>
                            <th style="text-align:center; background: #BDB76B;">Title</th>
                            <th style="text-align:center; background: #BDB76B;">Released</th>
                            <th style="text-align:center; background: #BDB76B;">Track List</th>
                            <th style="text-align:center; background: #BDB76B;">Primary Genres</th>
                            <th style="text-align:center; background: #BDB76B;">Secondary Genres</th>
                        </tr>
                        <xsl:for-each select="BAZA/ALBUM">
                            <tr>
                                <td class="publisher"><xsl:value-of select="@PUBLISHER"/></td>
                                <td class="artist"><xsl:value-of select="ARTIST"/></td>
                                <td class="type"><xsl:value-of select="ARTIST/@TYPE"/></td>
                                <td class="title"><xsl:value-of select="TITLE"/></td>
                                <td class="released"><xsl:value-of select="RELEASED"/></td>
                                <td class="track_list">
                                    <div class="dropdown">
                                        <button class="dropbtn">Songs</button>
                                        <div class="dropdown-content">
                                            <xsl:for-each select="TRACK_LIST/SONG">
                                                <a href="#"><xsl:value-of select="."/></a>
                                            </xsl:for-each>
                                        </div>
                                    </div>
                                </td>

                                <td class="primary">
                                    <div class="dropdown">
                                        <button class="dropbtn">Primary</button>
                                        <div class="dropdown-content">
                                            <xsl:for-each select="GENRES/PRIMARY">
                                                <a href="#"><xsl:value-of select="."/></a>
                                            </xsl:for-each>
                                        </div>
                                    </div>
                                </td>

                                <td class="secondary">
                                    <div class="dropdown">
                                        <button class="dropbtn">Secondary</button>
                                        <div class="dropdown-content">
                                            <xsl:for-each select="GENRES/SECONDARY">
                                                <a href="#"><xsl:value-of select="."/></a>
                                            </xsl:for-each>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <br/>
                <h2 class="label">LABELS</h2>
                <table id="labels">
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
                </table><br/>

                <p><b>Sort labels via name:</b></p>
                <button type="button" id="sortLabelBtn" onclick="sortLabelsAscending()">Sort Labels via name (ascending)</button>
                <button type="button" id="sortLabelBtn" onclick="sortLabelsDescending()">Sort Labels via name (descending)</button>
                <p/><br/>

                <p><b>Show albums:</b></p>
                <form>
                    Publisher's ID: <input type="text" name="labelID" id="formAnswer"/><br/>
                    <input type="button" onclick="showAlbums()" value="Show"/>
                    <input type="button" onclick="Reset()" value="Reset"/>
                </form>
                <p id="albumsFromForm"/><br/>

                <p><b>Add Label:</b></p>
                <form>
                    Label's ID: <input type="text" name="labelID" id="AddId"/><br/>
                    Name: <input type="text" name="labelName" id="AddName"/><br/>
                    Formed <input type="date" name="labelFormed" id="AddFormed"/><br/>
                    Website: <input type="url" name="labelWebsite" id="AddWebsite"/><br/>
                    Contact: <input type="email" name="labelContact" id="AddContact"/><br/>
                    <input type="button" onclick="AddLabel()" value="Add Label"/>
                </form>
                <script src="scripts.js"/>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
