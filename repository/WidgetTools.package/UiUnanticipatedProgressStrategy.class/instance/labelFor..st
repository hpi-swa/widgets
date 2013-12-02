accessing
labelFor: ctxt

	^ [
		label ifNil: [self updateLabelFor: ctxt].
		label
	] on: Error do: ['Unknown Task']