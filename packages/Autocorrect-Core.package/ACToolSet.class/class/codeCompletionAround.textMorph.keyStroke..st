as yet unclassified
codeCompletionAround: aBlock textMorph: aTextMorph keyStroke: evt
	| editor stringHolder |
	
	editor := aTextMorph editor.
	stringHolder := editor ifNotNil: [editor model].
	(self worksWith: stringHolder) ifTrue: [
		(stringHolder correctionController handleKeystrokeBefore: evt editor: editor)
				ifTrue: [^ self]].
	aBlock value.
	"sends to keyStroke event handler, if any"
	"Narrow the completion with any of the keys"
	(self worksWith: stringHolder) ifTrue: [
		stringHolder correctionController handleKeystrokeAfter: evt editor: editor].