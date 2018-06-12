as yet unclassified
computeArgsAndLocalVars
	|argsAndLocalVars|
	argsAndLocalVars := OrderedCollection new.
	ranges do: [:range |
				(range type = #patternArg or: [range type = #patternTempVar])
				ifTrue: [
				argsAndLocalVars add: (source
											copyFrom: range start
											to: range end)]].
	^ argsAndLocalVars