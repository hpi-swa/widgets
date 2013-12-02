as yet unclassified
open

	| spacer |
	(ActiveWorld mainDockingBars first submorphs detect: [:m | m isKindOf: self] ifNone: [])
			ifNotNil: [:tool | ^tool updateButtons].

	spacer := ActiveWorld mainDockingBars first submorphs detect: [:m | m isAlignmentMorph].
	ActiveWorld mainDockingBars first
		addMorph: self new inFrontOf: spacer.