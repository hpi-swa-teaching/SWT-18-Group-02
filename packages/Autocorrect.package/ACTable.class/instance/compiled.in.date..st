as yet unclassified
compiled: selector in: class date: date
	"this is only called for the default instance of ACTable"
	| method |

	self addEntry: (ACDatedEntry contents: selector asString date: date).
	self class classes addEntry: (ACDatedEntry contents: (class theNonMetaClass name) asString date: date).
	(class canUnderstand: selector) ifFalse: [ ^self ].
	method := class compiledMethodAt: selector ifAbsent: [ ^self ].
	method messages do: [ :m | self  addEntry: (ACDatedEntry contents: m asString date: date)].
	method literals do: [ :each |
		(each isVariableBinding and: [
			each key notNil and: [
				each key first isUppercase ] ])
					ifTrue: [ 
						self class classes addEntry: (ACDatedEntry contents: (each key) asString date: date) ] ]