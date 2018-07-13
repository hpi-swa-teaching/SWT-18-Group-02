as yet unclassified
fillWithRecord: aRecord
	aRecord methodClass ifNotNilDo: [:aClass |
		self default compiled: aRecord methodSelector in: aClass date: aRecord timeStamp]