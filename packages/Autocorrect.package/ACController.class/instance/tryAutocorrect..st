initiateCorrection
tryAutocorrect: anEditor
 self correctionDelayAfterDelete < (TimeStamp now - self correctionTimestamp)asMilliSeconds
	ifTrue:[self autocorrectIn: anEditor].