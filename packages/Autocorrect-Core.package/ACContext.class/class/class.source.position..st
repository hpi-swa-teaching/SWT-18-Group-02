instance creation
class: aClass source: aString position: anInteger

	^ self basicNew initialize 
		setClass: aClass
		source: aString
		position: anInteger