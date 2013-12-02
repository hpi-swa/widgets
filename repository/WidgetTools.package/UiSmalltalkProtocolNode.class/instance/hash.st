comparing
hash

	^ (self species hash
		bitXor: self organization hash)
		bitXor: self protocol hash