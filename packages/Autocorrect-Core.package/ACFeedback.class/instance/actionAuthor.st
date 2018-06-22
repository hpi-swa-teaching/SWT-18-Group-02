actions
actionAuthor
	^ self author ifNil: [self author: GitStamp defaultName]