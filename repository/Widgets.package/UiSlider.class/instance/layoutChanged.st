geometry - layout
layoutChanged

	(self valueOfProperty: #noLayoutChange ifAbsent: [false])
		ifFalse: [super layoutChanged].  