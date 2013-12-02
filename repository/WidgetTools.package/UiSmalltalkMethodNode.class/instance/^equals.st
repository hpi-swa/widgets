comparing
= aNode

	^ (self species = aNode species
		and: [self theClass = aNode theClass])
		and: [self selector = aNode selector]