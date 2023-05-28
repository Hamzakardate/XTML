(: Exemple Xquery :)

<html>
<body>
<h1>Liste des étudiants plus agés que Kaddouri </h1>
<hr />
<table cellspacing = "20">
	{
	for $x in doc("Liste.xml")/liste/étudiant
	let $i := doc("Liste.xml")/liste/étudiant[position()= last()]/age
	
	where $x/age < $i
	order by $x/nom ascending
	return <tr><td> {translate(data($x/nom),"abcdefghijklmnopqrstuvwxyz","ABSDEFGHIJKLMNOPQRSTUVWXYZ")}</td><td><img src = "{data($x/photo/@source)}"/> </td></tr>
	}
</table>

</body>
</html>(: Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="no" name="Scenario1" userelativepaths="yes" externalpreview="no" useresolver="no" url="" outputurl="s2.html" processortype="saxon" tcpport="0" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline=""
		          additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" host="" port="0" user="" password="" validateoutput="no" validator="internal"
		          customvalidator="">
			<advancedProperties name="CollectionURIResolver" value=""/>
			<advancedProperties name="ModuleURIResolver" value=""/>
			<advancedProperties name="schemaCache" value="||"/>
			<advancedProperties name="DocumentURIResolver" value=""/>
		</scenario>
		<scenario default="yes" name="Scenario2" userelativepaths="yes" externalpreview="yes" useresolver="yes" url="" outputurl="" processortype="datadirect" tcpport="0" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline=""
		          additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" host="" port="0" user="" password="" validateoutput="no" validator="internal"
		          customvalidator="">
			<advancedProperties name="CollectionURIResolver" value=""/>
			<advancedProperties name="ModuleURIResolver" value=""/>
			<advancedProperties name="DocumentURIResolver" value=""/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
:)