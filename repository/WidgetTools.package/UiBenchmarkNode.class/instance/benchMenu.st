menu
benchMenu

	| menu |
	menu := MenuMorph new
		defaultTarget: self.
		
	menu add: 'Bench' action: #updateBench.
	
	^ menu