nodes - accessing
allNodes

	^ Array streamContents: [:s | self allNodesDo: [:node | s nextPut: node]]