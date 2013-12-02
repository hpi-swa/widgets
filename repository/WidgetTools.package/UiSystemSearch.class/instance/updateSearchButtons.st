updating
updateSearchButtons

	self ui nextBtn enabled: (self ui searchEdit theText notEmpty and: [self finder hasNext]).
	self ui prevBtn enabled: (self ui searchEdit theText notEmpty and: [self finder hasPrevious]).