accessing
bindings

	self flag: #orderBroken. "mt: order of temps gets lost"
	^ self doItContext
		ifNil: [Dictionary new]
		ifNotNil: [:ctxt |
			self flag: #shadowing. "mt: duplicate keys possible due to shadowin."
			Dictionary newFrom: (
			ctxt tempNames asSet asOrderedCollection withIndexCollect: [:nm :idx |
				nm -> (ctxt namedTempAt: idx)])]