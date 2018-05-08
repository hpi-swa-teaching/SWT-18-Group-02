strategy interface
getListOfType: aType
	(aType = #SimpleList)
		ifTrue: [^self simpleList]