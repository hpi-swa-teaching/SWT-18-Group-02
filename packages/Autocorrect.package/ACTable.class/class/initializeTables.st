as yet unclassified
initializeTables

	UIManager default 
		informUser: 'We are currently initializing your correction tables. 
			This may take a moment, but will never happen again.'
		during: [
			default := self new.
			classes := self new.
			self initializeWithPackages.
			self initializeWithInlinedMessages.
			self fillCompletionTable.].