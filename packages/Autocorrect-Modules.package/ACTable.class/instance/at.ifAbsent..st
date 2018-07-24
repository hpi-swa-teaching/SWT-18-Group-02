lookUp access
at: aString ifAbsent: aBlock
	^ (self tableFor: aString) at: aString ifAbsent: aBlock