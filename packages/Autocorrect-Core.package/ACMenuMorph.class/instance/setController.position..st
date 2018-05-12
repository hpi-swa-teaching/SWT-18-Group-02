initialization
setController: anACController position: aPoint
	controller := anACController.
	context := controller context.
	self createTitle.
	self position: aPoint - (20 @ 0)
