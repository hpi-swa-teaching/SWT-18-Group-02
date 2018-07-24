recommendationInsertion
insertCompletion: aString 
	| startIndex oldSelectionInterval editor cmd |
	
	editor := self controller editor.
	editor closeTypeIn; 
			openTypeIn.
	startIndex := editor startIndex.
	oldSelectionInterval := startIndex - self controller completionToken size to: startIndex - 1.
	editor selectInvisiblyFrom: oldSelectionInterval first to: oldSelectionInterval last.  
	editor replaceSelectionWith: aString.
	
	cmd := editor history previous.
	cmd type: #Autocorrection.
	cmd contentsBefore: self controller completionToken.
	cmd contentsAfter: aString.
	cmd intervalBetween: (oldSelectionInterval first to: oldSelectionInterval first + aString size).
	cmd intervalBefore: oldSelectionInterval.

	editor selectAt: startIndex + (aString indexOf: Character space ifAbsent: [ aString size ])  - oldSelectionInterval size