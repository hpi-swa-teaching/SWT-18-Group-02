accessing
menuMorph

	^ self expanded ifTrue: [OXMenuMorph] ifFalse: [ACMenuMorph]