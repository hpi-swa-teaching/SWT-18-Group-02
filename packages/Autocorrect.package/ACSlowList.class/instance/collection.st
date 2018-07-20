accessing
collection
	^ collection ifNil:
			[collection := Set new]