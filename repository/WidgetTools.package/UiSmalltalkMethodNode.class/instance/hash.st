comparing
hash

	^ (self species hash
		bitXor: self theClass hash)
		bitXor: self selector hash