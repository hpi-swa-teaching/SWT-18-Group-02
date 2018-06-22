as yet unclassified
initialize 
	self default reset.
	#(defaultStrategy ifNil: ifTrue: ifFalse: strategies morph initialize do: new blue red yellow green) 
		do: [:e | self default addEntry: e].
	self classes reset.
	#( Morph ACSlowStrategy ACMenuMorph ACSlowStrategy String Model Mutex OCompletionTable OXMenuMorph OMenuMorph ECMenuMorph ACController ) 
		do: [:e | self classes addEntry: e]