accessing - model index
currentIndex: aModelIndex

	(aModelIndex isNil or: [aModelIndex node notNil and: [aModelIndex selectable not]])
		ifTrue: [^ self currentCell: nil].
		
	self currentCell:
		(self viewport cellIndexFromModelIndex: aModelIndex).
