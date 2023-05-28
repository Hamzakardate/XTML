<?xml version='1.0'?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

	<html>
	<body>
		<h1>Liste des étudiants réussis</h1>
<hr />

<ol>
<xsl:for-each select="/liste/étudiant[moyenne >= 10]">
<xsl:sort select="nom" data-type="text" order="descending" />

<!--xsl:if test="moyenne >= 10" -->
	<li>
		<xsl:value-of  select="@code" />)--- <xsl:value-of  select="nom" />
		
		
		(
					<xsl:choose>
						<xsl:when test="moyenne > 16 ">
							Très Bien
						</xsl:when>

						<xsl:when test="moyenne >= 14 and moyenne &lt; 16">
							Bien
						</xsl:when>

						<xsl:when test="moyenne >= 12 and moyenne &lt; 14">
							Assez Bien
						</xsl:when>

						<xsl:when test="moyenne >= 10 and moyenne &lt; 12">
							Passable
						</xsl:when>

						<xsl:otherwise>
							Ajourné
						</xsl:otherwise>
					</xsl:choose>
					
					
					)	



	</li>
<!--/xsl:if-->

</xsl:for-each>
</ol>


	</body>
	</html>

</xsl:template>


</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="Liste.xml" htmlbaseurl="" outputurl="..\XSL_2017_2\liste.html" processortype="internal" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->