as yet unclassified
nodes

	^ self children
		ifNil: [#()]
		ifNotNil: [:groups | groups values gather: [:group | group]]