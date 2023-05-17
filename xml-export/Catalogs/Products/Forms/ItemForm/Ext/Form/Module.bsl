// @strict-types


#Region FormEventHandlers

&AtClient
Procedure OnOpen(Cancel)
	
	ShowMessageBox(Undefined, NStr("en = 'Hello world!';
									|ro = 'Salut Lume!'"));
	ShowMessageBox(Undefined, NStr("en = 'Products';
									|ro = 'Produse'"));
	
EndProcedure


#EndRegion

