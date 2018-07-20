accessing
first: aNumber
	self collection size <= aNumber
		ifTrue:[^self collection]
		ifFalse:[^self collection first: aNumber]