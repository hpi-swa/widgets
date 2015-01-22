as yet unclassified
example
	"	ActiveMorphScripts removeAll.
	ActiveMorphScripts do: [:s | s stop]
	ActiveMorphScripts last stop.
	ActiveMorphScripts last resume.
"
	| bounceMorph |
	bounceMorph := [:form |
		| m x y |
		m := form asMorph.
		x := 1024 atRandom.
		y := 768 atRandom.
	
		m openInWorld.
	
		[
			| steps endX endY dx dy|
			steps := 50 atRandom + 100.
			endX := 1024 atRandom.
			endY := 768 atRandom.
			
			dx := (endX - x) // steps.
			dy := (endY - y) // steps.
			
			steps timesRepeat: [
				x := x + dx.
				y := y + dy.
				
				m topLeft: x@y.
				
				"self breakhere: 1."
				self breaktime: 100.
				
				]
	
		] repeat ].

	10 timesRepeat: [ 
		[bounceMorph value: UiFugueIcons fruitIcon] forkUiScript.
		[bounceMorph value: UiFugueIcons fruitGrapeIcon] forkUiScript ].