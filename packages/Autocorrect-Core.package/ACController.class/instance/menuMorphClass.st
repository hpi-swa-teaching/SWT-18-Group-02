viewHandling
menuMorphClass
	^ self expanded ifTrue: [ACXMenuMorph] ifFalse: [ACMenuMorph]