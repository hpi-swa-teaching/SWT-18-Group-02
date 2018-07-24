math
editDistanceAt: row at: column
	|capitalizationCost swapCost deletionCost insertionCost substitutionCost|
	
	capitalizationCost := (self string at: row)asUppercase = (self suggestion at: column)asUppercase
				ifTrue:[(self at: row - 1 at: column - 1) +0.5]
				ifFalse: [(self at: row - 1 at: column - 1) + 1].
	swapCost :=  (row > 1 and: [column > 1]) 
				ifTrue: [((self string at: row - 1) = (self suggestion at: column) and: (self string at: row) = (self suggestion at: column - 1))
					ifTrue:[(self at: row - 2 at: column - 2)+1]
					ifFalse:[(self at: row - 2 at: column - 2)+ 2]]
				ifFalse: [(self at: row - 1 at: column - 1) + 1].
			deletionCost := (self at: row - 1 at: column) + 1.
			insertionCost := (self at: row at: column - 1) + 1.
			substitutionCost := (self string at: row) = (self suggestion at: column)
				ifTrue:[(self at: row - 1 at: column - 1)]
				ifFalse: [(self at: row - 1 at: column - 1) + 1].
				
	^ {deletionCost . insertionCost . substitutionCost . capitalizationCost . swapCost} min