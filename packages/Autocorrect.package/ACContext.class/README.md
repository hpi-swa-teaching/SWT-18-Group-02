An ACContext is the object created to represent the context which is currently written in to the modules of the autocorrection.

Instance Variables
	currentlyRelevant:		OrderedCollection
	receiverType:			Symbol

currentlyRelevant
	- contains all possible local variables and arguments for the current method/workspace

receiverType
	- represents the type of the receiver for the current message 
	- see computeReceiverType for the possible values
