initialization
setController: anACController position: aPoint
	self controller: anACController.
	self context: nil.
	self createTitle.
	self position: aPoint - (20 @ 0)
