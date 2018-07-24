as yet unclassified
testInstanceInitialization
	| controller aPoint|
	
	controller := ACController new.
	aPoint := (20 @ 0).
	self menu setController: controller position: aPoint.
	self assert: controller equals: self menu controller.
	self assert: (0@0) equals: self menu position.
	