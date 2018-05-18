initialization
setController: anACController position: aPoint 
	controller := anACController.
	context := nil.
	self createTitle.
	self position: aPoint - (20 @ 0).