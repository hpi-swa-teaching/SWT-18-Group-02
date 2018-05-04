history
lastStoredRun
	^ ((Dictionary new) add: (#errors->((Set new))); add: (#passed->((Set new) add: #testCalcCorrection; yourself)); add: (#failures->((Set new))); add: (#timeStamp->'21 April 2018 5:46:57 pm' asTimeStamp); yourself)