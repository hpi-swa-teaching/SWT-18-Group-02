keyboard
handleKeystrokeBefore: kbEvent editor: theEditor 
	"I return a boolean. true when I have handled the event and no futher processing is needed by the caller."
	"events completing started Syntax are handled here, as well as navigation through the completion menu"
	
	^ super handleKeystrokeBefore: kbEvent editor: theEditor