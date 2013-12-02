as yet unclassified
show: aTitleString in: aMorph.
	
	self result: nil.
	
	(self openInWindowLabeled: aTitleString)
		center: aMorph center.
		
	[self isInWorld and: [self result isNil]] whileTrue: [ActiveWorld doOneSubCycle].

	self owner delete.

	^ self result