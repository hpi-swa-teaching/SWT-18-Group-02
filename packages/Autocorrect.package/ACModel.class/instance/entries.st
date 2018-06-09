accessing
entries
	"this needs to be overwritten, as the OModel uses this to actually calculate entries first"
	^ entries ifNil: [{'initial' . 'entries' . 'needed'} asOrderedCollection]