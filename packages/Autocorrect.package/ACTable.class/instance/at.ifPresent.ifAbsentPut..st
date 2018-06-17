lookUp access
at: aString ifPresent: oneArgBlock ifAbsentPut: absentBlock
	^(self tableFor: aString) at: aString ifPresent: oneArgBlock ifAbsentPut: absentBlock