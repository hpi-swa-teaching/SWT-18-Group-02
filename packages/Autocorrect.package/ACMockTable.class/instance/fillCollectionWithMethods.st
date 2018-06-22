as yet unclassified
fillCollectionWithMethods

	#(defaultStrategy ifNil: ifTrue: ifFalse: strategies morph initialize do: new blue red yellow green) 
		do: [:e | self addString: e asString]