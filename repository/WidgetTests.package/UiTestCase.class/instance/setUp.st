running
setUp

	super setUp.

	sut := self subjectClass new.
	spy := SignalSpy new.
	hand := UiTestHandMorph new owner: sut.
	time := 0.