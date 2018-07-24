accessing
string: aString
	|size|
	
	[size:= self string size min: aString size.
	(self string first: size) = (aString first: size)]
		whileFalse: [self deleteRow: self string size.
			string:= self string first: self string size - 1].
	string := aString.
	self faults: self contextFaults + (self at: self string size at: (self string size min: self suggestion size))