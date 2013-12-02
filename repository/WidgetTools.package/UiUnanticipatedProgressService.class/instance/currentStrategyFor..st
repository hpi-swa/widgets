progress updating
currentStrategyFor: ctxt
	"See #initialize."

	((ctxt isExecutingBlock not
		and: [(ctxt receiver isCollection and: [ctxt sender notNil]) and: [
			"main event loop"
			(ctxt sender receiver class ~~ WorldState)
				"modal dialogs"
				and: [ctxt sender receiver class ~~ PluggableButtonMorphPlus]]])
		and: [self isLoopInMethod: ctxt method])
			ifTrue: [^ strategies at: 1].

	(((ctxt selector isDoIt and: [ctxt isExecutingBlock])
		or: [ctxt selector == #apply:to:factor:bias:])
		and: [self isLoopInMethod: ctxt method])
		ifTrue: [^ strategies at: 3].
		
	(ctxt receiver class == BlockClosure and: [ctxt selector == #bench])
		ifTrue: [^ strategies at: 2].

	(ctxt receiver class == SmallInteger and: [ctxt selector == #timesRepeat:])
		ifTrue: [^ strategies at: 4].

	^ nil