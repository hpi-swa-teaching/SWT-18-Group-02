comparing
<= anACSuggestion
	self faults = anACSuggestion faults
		ifTrue: [^ self date >= anACSuggestion date]
		ifFalse: [^ self faults < anACSuggestion faults]