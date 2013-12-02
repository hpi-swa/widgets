accessing
checkBlock

	^ [:node | node label beginsWith: self ui searchEdit theText asString]