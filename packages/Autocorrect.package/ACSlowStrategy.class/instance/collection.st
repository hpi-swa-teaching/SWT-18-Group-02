as yet unclassified
collection
	^ (self list default first: self numberOfTestedMethods)
		union: (self list classes first: self numberOfTestedClasses)