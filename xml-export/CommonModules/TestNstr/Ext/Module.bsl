// @strict-types


#Region Public

// Parameters:
//  LocalString - String - 
Procedure Test(LocalString) Export
	
	LocalString = NStr("en = 'Hello world!';
						|ro = 'Salut Lume!'");
	
EndProcedure

Function GetProductPresentationMultiligual() Export
	
	// @NStr-1 - return multi-lingual string for processing in all languages
	Return "en = 'Products';
			|ro = 'Produse'";
	
EndFunction

#EndRegion
