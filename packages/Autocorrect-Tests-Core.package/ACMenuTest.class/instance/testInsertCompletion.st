as yet unclassified
testInsertCompletion
	| controller editor|
	
	controller := ACController new.
	editor := ACMockEditor new.
	editor history: TextEditorCommandHistory new.
	editor openTypeIn.
	controller editor: editor.
	menu setController: controller position: (20 @ 20).
	menu model: ACModel new.
	
	menu insertCompletion: 'test' asString.