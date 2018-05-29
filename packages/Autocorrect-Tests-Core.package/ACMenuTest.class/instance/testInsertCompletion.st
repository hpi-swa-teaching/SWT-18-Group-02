as yet unclassified
testInsertCompletion
	| controller editor|
	
	controller := ACController new.
	editor := ACMockEditor new.
	controller editor: editor.
	menu setController: controller position: (20 @ 20).
	menu model: ACModel new.
	
	menu insertCompletion: 'test' asString.