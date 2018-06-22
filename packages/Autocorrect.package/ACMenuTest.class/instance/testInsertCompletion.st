as yet unclassified
testInsertCompletion
	| controller editor|
	
	controller := ACController new.
	editor := ACMockEditor new.
	editor history: TextEditorCommandHistory new.
	editor openTypeIn.
	controller editor: editor.
	self menu setController: controller position: (20 @ 20).
	
	self menu insertCompletion: 'test' asString