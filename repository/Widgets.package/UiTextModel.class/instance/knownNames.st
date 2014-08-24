as yet unclassified
knownNames
	"Unify receiver and context temps to return a list of name associations. One could think of bindings, but those are slightly different in terms of lookup."

	^ {#self -> self doItReceiver},
		(self doItReceiver ifNil: [#()] ifNotNil: [:obj |
			(obj isBehavior ifFalse: [#()] ifTrue: [
				obj classVarNames collect: [:nm |
					obj bindingOf: nm]]),
			(obj class instVarNames withIndexCollect: [:nm :idx |
				nm -> (obj instVarAt: idx)])
			]),
		(self doItContext ifNil: [#()] ifNotNil: [:ctxt |
			(ctxt tempNames withIndexCollect: [:nm :idx |
				nm -> (ctxt namedTempAt: idx)])])