// @strict-types


#Region FormEventHandlers

&AtClient
Procedure OnOpen(Cancel)
	
	ShowMessageBox(Undefined, NStr("en = 'Hello world!'"));
	ShowMessageBox(Undefined, NStr("en = 'Products'"));
	
EndProcedure


#EndRegion

