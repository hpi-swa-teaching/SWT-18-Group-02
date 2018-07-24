computation
currentlyNewStatement
	^ (((self completionIndex = 1) 
		or: [(self ranges at: self completionIndex - 1) type = #statementSeparator]
		or: [(self ranges at: self completionIndex - 1) type = #binary]
		or: [(((self ranges at: self completionIndex - 1) type) howManyMatch: #leftParenthesis) = (#leftParenthesis size)]
		or: [(((self ranges at: self completionIndex - 1) type) howManyMatch: #blockStart) = (#blockStart size)]
		or: [(self ranges at: self completionIndex - 1) type = #ansiAssignment])
		or: [(self ranges at: self completionIndex - 1) type = #methodTempBar])
		