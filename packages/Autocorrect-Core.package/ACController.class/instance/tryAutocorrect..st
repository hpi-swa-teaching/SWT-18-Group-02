accessing
tryAutocorrect: anEditor
 490 < (TimeStamp now - self correctionTimestamp)asMilliSeconds ifTrue:[self autocorrectIn: anEditor]. 