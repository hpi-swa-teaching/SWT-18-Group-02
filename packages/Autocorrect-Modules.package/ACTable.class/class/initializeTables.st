as yet unclassified
initializeTables

	default := self new.
	classes := self new.
	Smalltalk isHeadless ifFalse: [
		(UIManager default 
			confirm: 
'		Do you want to load your currently saved completion recommendations (recommended) 
											        OR
load your most current work from the changes file for the initial corrections (this may take a few minutes)?'
			title: 'How should we load?'
			trueChoice: 'Use existing tables'
			falseChoice: 'Load from changes' )
				ifTrue: [	self loadFromOTable]
				ifFalse: [self loadKernelCollectionAndChanges]]
		ifTrue: [	self loadFromOTable].