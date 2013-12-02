drawing - window highlight
updateWindowHighlight

	entries first in: [:e | | ctxt |
		ctxt := e context.
		[ctxt notNil] whileTrue: [
			ctxt receiver isMorph
				ifTrue: [
					(ctxt receiver firstOwnerSuchThat: [:m | m isSystemWindow])
						ifNotNil: [:wnd |
							wnd bounds ~= lastWindowBounds ifTrue: [
								self disableWindowHighlight. "using old bounds"
								lastWindowBounds := wnd bounds]]
						ifNil: [
							self disableWindowHighlight.
							lastWindowBounds := nil].
					ctxt := nil]
				ifFalse: [ctxt := ctxt sender].
		].
		"Blink."
		self toggleWindowHighlight.
	].