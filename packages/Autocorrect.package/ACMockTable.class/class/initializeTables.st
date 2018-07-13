as yet unclassified
initializeTables
	default := self new.
	classes := self new.
	#( Morph ACSlowStrategy ACMenuMorph ACSlowStrategy String Model Mutex OCompletionTable OXMenuMorph OMenuMorph ECMenuMorph ACController ) 
		do: [:e | self classes addString: e asString].
		#(defaultStrategy ifNil: ifTrue: ifFalse: strategies morph initialize do: new blue red yellow green) 
		do: [:e | self default addString: e asString]