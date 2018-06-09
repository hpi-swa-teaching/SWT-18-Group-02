accessing
entries
	"this needs to be lazy initialize, as the entries will be nil on the very first word in a new StringHolder"
	^ entries ifNil: [{'initial' . 'entries' . 'needed'} asOrderedCollection]