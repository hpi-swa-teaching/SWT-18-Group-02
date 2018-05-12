as yet unclassified
editDistanceBetween: aString1 and: aString2
	|v0 v1 deletionCost insertionCost substitutionCost|
	v0 := Array new: aString2 size + 1.
	v1 := Array new: aString2 size + 1.
	(0 to: aString2 size) do: [:each |
		v0 at: each + 1 put: each].
	(0 to: aString1 size - 1) do: [:i |
		v1 at: 1 put: i + 1.
		(0 to: aString2 size - 1) do: [:j |
			deletionCost := (v0 at: j + 2) + 1.
			insertionCost := (v1 at: j + 1) + 1.
			substitutionCost := (aString1 at: i + 1) = (aString2 at: j + 1)
				ifTrue: [v0 at: j + 1]
				ifFalse: [(v0 at: j + 1) + 1].
			v1 at: j + 2 put: {deletionCost . insertionCost . substitutionCost} min].
		v0 := v1 copy].
	^ v0 at: aString2 size + 1
	