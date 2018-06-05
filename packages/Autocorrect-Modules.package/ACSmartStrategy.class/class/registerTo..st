as yet unclassified
registerTo: aController
	|strategy|
	strategy:= super registerTo: aController.
	"strategy getSuggestionsFor: ''."
	^ strategy