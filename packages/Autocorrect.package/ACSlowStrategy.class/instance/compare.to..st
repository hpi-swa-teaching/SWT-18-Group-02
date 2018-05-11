as yet unclassified
compare: firstString to: secondString
	^(Association key: secondString value: firstString size * 2 - (firstString alike: secondString))