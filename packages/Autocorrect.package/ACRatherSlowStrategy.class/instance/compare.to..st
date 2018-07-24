math
compare: firstString to: secondString
	firstString size >= secondString size ifTrue: [^ self editDistanceBetween: firstString and: secondString].
	
	^ self editDistanceBetween: firstString and: (secondString first: firstString size)