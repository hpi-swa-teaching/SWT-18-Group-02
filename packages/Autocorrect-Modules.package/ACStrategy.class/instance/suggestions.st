accessing
suggestions
	^ suggestions ifNil:
		[suggestions:= SortedCollection new sortBlock: [:a :b | a <= b ]]
