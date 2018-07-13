initiateCorrection
tryAutocorrect: anEditor
 300 < (TimeStamp now - self correctionTimestamp)asMilliSeconds
	ifTrue:[self autocorrectIn: anEditor].