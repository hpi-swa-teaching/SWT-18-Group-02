accessing
menuMorphClass
	^ self expanded ifTrue: [ACXMenuMorph] ifFalse: [ACMenuMorph]