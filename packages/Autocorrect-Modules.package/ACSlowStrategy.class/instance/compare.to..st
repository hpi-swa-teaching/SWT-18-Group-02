as yet unclassified
compare: firstString to: secondString
	^((firstString size + 2) - 
		(firstString alike: secondString)) clampLow:0 + 
		(((firstString size - secondString size)abs+1)log/2log)