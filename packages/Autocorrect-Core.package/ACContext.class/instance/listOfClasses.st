as yet unclassified
listOfClasses
	|aCollection|
	aCollection := OrderedCollection new.
	aCollection add: 'self'.
	aCollection add: 'super'.
"	Smalltalk do: [:each | aCollection add: each]." "this adds all of the classes, which are approx 4.4k (actually more but only that many are registered"
	aCollection add: 'Morph'.
	^ aCollection