accessing
remainingDuration
		
	^ (Duration milliSeconds: self timeRemaining)
		roundTo: (Duration seconds: 1)