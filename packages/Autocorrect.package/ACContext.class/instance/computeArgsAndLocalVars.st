computation
computeArgsAndLocalVars
	|argsAndLocalVars|
	argsAndLocalVars := OrderedCollection new.
	self ranges do: [:range |
				(range type = #patternArg or: [range type = #patternTempVar])
				ifTrue: [
				argsAndLocalVars add: (self source
											copyFrom: range start
											to: range end)]].
	^ argsAndLocalVars