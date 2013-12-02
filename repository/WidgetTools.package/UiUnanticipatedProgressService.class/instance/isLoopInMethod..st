progress updating
isLoopInMethod: m

	| i f |
	i := 0. f := false.
	[(i := i + 1) <= m numLiterals] whileTrue: [
		((m objectAt: i + 1) == #whileTrue:
			or: [(m objectAt: i + 1) == #to:do:])
			ifTrue: [f := true. i := m numLiterals + 1]].
	^ f