accessing
slowList
	^ slowList ifNil:[slowList := ACSlowList newWith: self]