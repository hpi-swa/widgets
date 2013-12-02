accessing
current

	^ current ifNil: [current := self minimum]