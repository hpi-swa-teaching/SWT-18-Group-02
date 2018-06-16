as yet unclassified
deleteRow: row
	(1 to: self suggestion size) do: [:column |
		self table at: row at: column put: nil]