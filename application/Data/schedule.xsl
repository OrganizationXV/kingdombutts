<?xml version="1.0" encoding="UTF-8"?>

<!-- schedule.xml
     Simon Su, Mark Khauv -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Schedule</title>
            </head>
            <body>
                <h1>Schedule</h1>
                <xsl:call-template name="schedule"/>
            </body>
        </html>
    </xsl:template>
    <!-- template for schedule -->
    <xsl:template name="schedule">
        <table border="2">
            <tr>
                <th>Time</th>
                <th width="200px">Monday</th>
                <th width="200px">Tuesday</th>
                <th width="200px">Wednesday</th>
                <th width="200px">Thursday</th>
                <th width="200px">Friday</th>
            </tr>
            <xsl:for-each select="/schedule/day/dayz">
                <xsl:call-template name="time"/>
            </xsl:for-each>
        </table>
    </xsl:template>
    <!-- template for time -->
    <xsl:template name="time">
        <tr>
            <th>
                <xsl:value-of select="time" />
            </th>
            <td>
                
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
