as yet unclassified
testInstanceInitialization
	| controller aPoint|
	
	controller := ACController new.
	aPoint := (20 @ 0).
	
	menu setController: controller position: aPoint.
	
	self assert: controller equals: menu controller.
	self assert: (0@0) equals: menu position.
	