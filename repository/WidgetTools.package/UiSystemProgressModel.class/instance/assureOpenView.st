initialization
assureOpenView
	"Look for the morph that visualizes the model."
	
	(ActiveWorld submorphs
		detect: [:m | m isKindOf: UiSystemProgressMorph]
		ifNone: [UiSystemProgressMorph new openInWorld; center: ActiveWorld center]) ifNotNil: [:m |
			m comeToFront].