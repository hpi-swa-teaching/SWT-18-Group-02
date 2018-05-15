*Autocorrect-Core
correctionController
	
	| controller |
	
	((ToolSet default) = ACToolSet) ifFalse: [^ self completionController].
	
	controller := self dependents 
		detect: [ :each | each isKindOf:  ACController ]
		ifNone: [ 
			"This is just the migration code from the old #actionMap hack."
			(self triggerEvent: #getCorrectionController) ifNotNil: [ :theController |
				self addDependent: theController ] ].
	^controller ifNil: [ self initializeCorrectionController ]
	