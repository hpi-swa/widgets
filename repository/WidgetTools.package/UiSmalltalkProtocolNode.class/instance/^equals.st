comparing
= aNode

	^ (self species = aNode species
		and: [self organization = aNode organization])
		and: [self protocol = aNode protocol]