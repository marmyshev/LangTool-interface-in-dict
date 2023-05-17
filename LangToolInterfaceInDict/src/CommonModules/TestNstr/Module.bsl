// @strict-types


#Region Public

// Parameters:
//  LocalString - String - 
Procedure Test(LocalString) Export
	
	LocalString = NStr("en = 'Hello world!'");
	
EndProcedure

Function GetProductPresentationMultiligual() Export
	
	// @NStr-1 - return multi-lingual string for processing in all languages
	Return "en = 'Products';";
	
EndFunction

#EndRegion
