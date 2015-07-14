as yet unclassified
aggregate: key with: block defaultValue: object
	"Aggregate values in leaves up to root."
	
	self nodesDo: [:node | node at: key put: (node nodes 
		inject: (node at: key ifAbsent: object)
		into: [:result :each | block value: result value: (each at: key ifAbsent: object)])].