as yet unclassified
currentlyNewStatement

	^ (((completionIndex = 1) 
		or: [(ranges at: completionIndex - 1) type = #statementSeparator]
		or: [(ranges at: completionIndex - 1) type = #binary]
		or: [(((ranges at: completionIndex - 1) type) howManyMatch: #leftParenthesis) = (#leftParenthesis size)]
		or: [(((ranges at: completionIndex - 1) type) howManyMatch: #blockStart) = (#blockStart size)]
		or: [(ranges at: completionIndex - 1) type = #ansiAssignment])
		or: [(ranges at: completionIndex - 1) type = #methodTempBar])
		