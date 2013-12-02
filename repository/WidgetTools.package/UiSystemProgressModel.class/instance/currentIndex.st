index generation
currentIndex
	"Calculates the current model index for this process."  
	
	| nodes index lastNode |
	nodes := OrderedCollection new.
	nodes add: self currentNode.
	
	"Walk up the parent hierarchy and store the path."
	[nodes last parent ~= self rootNode] whileTrue: [
		nodes add: nodes last parent].
	
	"Secure access to local-root for this process."
	self mutex critical: [
		index := self
			indexRow: (self rootNode children indexOf: nodes last)
			column: 1
			parent: nil].
	
	"Now walk down to current node again and create indices."
	lastNode := nodes last.
	nodes allButLast reverseDo: [:node |
		index := self
			indexRow: (lastNode children indexOf: node)
			column: 1
			parent: index.
		lastNode := node].
	
	^ index