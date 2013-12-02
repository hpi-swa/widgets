as yet unclassified
recursiveDo: aBlock

	self ifEmpty: [^ self].
	self allButLast recursiveDo: aBlock.
	aBlock value: self last.