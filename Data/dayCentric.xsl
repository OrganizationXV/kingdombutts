<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : dayCentric.xsl
    Created on : April 5, 2016, 3:24 PM
    Author     : Vithusan
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    
    <xsl:template match="/">
        <html>
            <head>
		<title>XSL</title>
            </head>
            <body>
		<h2>Days Centric</h2>
		<table>
                    <xsl:call-template name="Headings"/>
                    <xsl:apply-templates select="/schedule/day/dayz"/>
		</table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template name="Headings">
        <tr>
            <th>Days</th>
            <th>08:30</th>
            <th>09:30</th>
            <th>10:30</th>
            <th>11:30</th>
            <th>12:30</th>
            <th>13:30</th>
            <th>14:30</th>
            <th>15:30</th>
            <th>16:30</th>
        </tr>
    </xsl:template>
    
    <xsl:template match="dayz">
        <tr>
            <td>
                <xsl:value-of select="./@weekday"/>
            </td>
            <td>
                <xsl:for-each select="dayBooking">
                    <xsl:if test="
                </xsl:for-each>
            </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
