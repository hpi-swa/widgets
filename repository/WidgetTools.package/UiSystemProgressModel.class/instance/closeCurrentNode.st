nodes
closeCurrentNode
	"Indicate, that the current progress is done. The progress of a whole process cannot be closed as each process only has exactly one node in this tree model's root."
	
	| node index size |
	node := self currentNode.
	index := self currentIndex.
	
	node parent = self rootNode
		ifTrue: [^ self].
	
	node current: node maximum.
	
	self mutex critical: [
		currentNode at: self currentId put: self currentNode parent].
	
	"Update the last value for the node."
	size := self currentNode children size.
	self rowsChangedFor: self currentIndex from: size to: size.
	self nodeClosed: index.