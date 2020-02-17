nodes - accessing
nodes

	^ Array streamContents: [:s | self nodesDo: [:node | s nextPut: node]]