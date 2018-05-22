<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="galeria">

<html>
<head>
<title>Galeria</title>
<link rel="stylesheet" type="text/css" href="../css/xsl.css"/>
</head>
<body>
<h1>Turismos</h1>

<xsl:for-each select="imagen">
<div class="imagen" style="float: left; width: 200px;">
  <h3>Ford <xsl:value-of select="@numero"/></h3>
  <div style="width: 70px; float: left;">
     <xsl:element name="img">
       <xsl:attribute name="src">
         <xsl:value-of select="dibujo/@ruta"/>
       </xsl:attribute>
       <xsl:attribute name="height">
         100
       </xsl:attribute>
     </xsl:element>
</div>
  <ul style="float: left;">
    <li><xsl:value-of select="nombre"/></li>
    <li><xsl:value-of select="precio"/></li>
  </ul>

</div>
</xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
