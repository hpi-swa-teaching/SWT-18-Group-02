lookUp access
at: aString ifPresent: oneArgBlock ifAbsent: absentBlock
	^ (self tableFor: aString) at: aString ifPresent: oneArgBlock ifAbsent: absentBlock