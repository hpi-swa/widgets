nodes
openCurrentNode: aNode
	"A new progress starts in context of the current node. That context is either the current process itself or another progress that is currently running."

	| node size index |
	node := self currentNode.
	index := self currentIndex.
	size := node children size.
	
	node addChild: aNode.

	self mutex critical: [
		currentNode at: self currentId put: aNode].
	
	self rowsInsertedFor: index from: size+1 to: size+1.
	
	^ aNode