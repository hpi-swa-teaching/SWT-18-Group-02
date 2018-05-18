as yet unclassified
editDistanceBetween: aString1 and: aString2
	|v0 v1 v_1 capitalizationCost swapCost deletionCost insertionCost substitutionCost|
	v0 := Array new: aString2 size + 1.
	v1 := Array new: aString2 size + 1.
	v_1 :=Array new: aString2 size +1.
	(0 to: aString2 size) do: [:each |
		v0 at: each + 1 put: each].
	(0 to: aString1 size - 1) do: [:i |
		v1 at: 1 put: i + 1.
		(0 to: aString2 size - 1) do: [:j |
			capitalizationCost := (aString1 at: i + 1)asUppercase = (aString2 at: j + 1)asUppercase
				ifTrue:[(v0 at: j + 1) +0.5]
				ifFalse: [(v0 at: j + 1) + 1].
			swapCost :=  (i > 0 and: [j > 0]) 
				ifTrue: [((aString1 at: i+1) = (aString2 at: j ) and: (aString1 at: i) = (aString2 at: j+1))
					ifTrue:[(v_1 at: j)+1]
					ifFalse:[(v_1 at: j )+ 2]]
				ifFalse: [(v0 at: j + 1) + 1].
			deletionCost := (v0 at: j + 2) + 1.
			insertionCost := (v1 at: j + 1) + 1.
			substitutionCost := (aString1 at: i + 1) = (aString2 at: j + 1)
				ifTrue: [v0 at: j + 1]
				ifFalse: [(v0 at: j + 1) + 1].
			v1 at: j + 2 put: {deletionCost . insertionCost . substitutionCost . capitalizationCost . swapCost} min].
		v_1 := v0 copy.
		v0 := v1 copy].
	^ v0 at: aString2 size + 1
	