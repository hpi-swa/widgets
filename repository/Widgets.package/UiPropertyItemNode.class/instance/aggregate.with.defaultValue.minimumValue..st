nodes - aggregation
aggregate: key with: block defaultValue: object minimumValue: minObject
	"Aggregate values in leaves up to root."
	
	self allNodesUpwardsDo: [:node | 
		| val |
		val := node nodes 
		inject: (node hasChildren ifTrue: [0] ifFalse: [node at: key ifAbsent: [object]])
		into: [:result :each | block value: result value: (each at: key ifAbsent: [object])].
		
		val < minObject ifTrue: [val := minObject].
		
		node at: key put: val].