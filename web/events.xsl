<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
<xsl:for-each select="events_list/event">
  <div style="background-color:teal;color:white;padding:4px">
    <span style="font-weight:bold"><xsl:value-of select="name"/> - </span>
    <xsl:value-of select="description"/>
    </div>
  <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
      <p>DATE: <xsl:value-of select="date"/></p>
     <p style="font-style:italic">VENUE: <xsl:value-of select="venue"/>)</p>
  </div>
</xsl:for-each>
</body>
</html>
