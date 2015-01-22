as yet unclassified
fork
	home := thisContext.
	block reentrant value.
	thisContext swapSender: continue.
	continue := home := nil.