<html>
<body>

<h1>Liste des étudiants réussis</h1>

<table border = "1" bordercolor = "red" cellpadding = "10">
{
for $x in doc("liste.xml")/liste/étudiant
let $y := avg(doc("liste.xml")/liste/étudiant[moyenne > 10]/moyenne),$f:='BDSaS'
where $x/@filière = $f and $x/moyenne > $y
order by $x/moyenne descending
return 
	<tr>
		<td>{data($x/@code)}</td>
		<td>{data($x/nom)}</td>
		<td>{data($x/moyenne)}</td>
		<td> { if ($x/moyenne >= 10 and $x/moyenne < 12)then 'Passable'
			  else 
			  		if ($x/moyenne >= 12 and $x/moyenne < 14)then 'Assez bien'
			  		else if ($x/moyenne >= 14 and $x/moyenne < 16)then 'Bien'
			  				else if ($x/moyenne >= 16)then 'Très bien'
									else 'Cas inconnu'
			  		
			  

			}	
		</td>
		

</tr>
}
</table>

</body>
</html>(: Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" useresolver="no" url="" outputurl="" processortype="internal" tcpport="1967941850" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" host="" port="0" user="" password="" validateoutput="no" validator="internal" customvalidator=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/><MapperBlockPosition></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
:)