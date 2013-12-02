accessing - private
assureCurrentNode
	"See #currentNode."
	
	| id |	
	currentNode ifNil: [currentNode := Dictionary new].
	
	id := self currentId.
	
	^ currentNode at: id ifAbsent: [
		| node pos |
		node := self rootNode addChild:
			(UiSystemProgressNode new
				text: (ProcessBrowser new prettyNameForProcess: Processor activeProcess);
				id: id).
		
		currentNode at: id put: node.
		
		pos := self rootNode children indexOf: node.
		self rowsInsertedFor: nil from: pos to: pos.
		
		node].