nodes - enumeration
nodesDo: aBlock

	self children valuesDo: [:nodesInGroup |
		nodesInGroup do: [:node | aBlock value: node]].