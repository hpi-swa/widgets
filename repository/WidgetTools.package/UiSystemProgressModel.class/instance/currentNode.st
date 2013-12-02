accessing
currentNode
	"Return the current progress node of the current process. Each process has its own 'process-local root' as a direct child of the actual root node of this system progress (tree) model. When a process tries to display progress the first time, a new node will be added for that process."

	^ self mutex critical: [self assureCurrentNode]