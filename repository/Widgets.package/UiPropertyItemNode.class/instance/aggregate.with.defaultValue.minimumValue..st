as yet unclassified
aggregate: key with: block defaultValue: object minimumValue: minObject
	"Aggregate values in leaves up to root."
	
	self nodesDo: [:node | 
		| val |
		val := node nodes 
		inject: (node hasChildren ifTrue: [object] ifFalse: [node at: key ifAbsent: [object]])
		into: [:result :each | block value: result value: (each at: key ifAbsent: [object])].
		
		val < minObject ifTrue: [val := minObject].
		
		node at: key put: val].