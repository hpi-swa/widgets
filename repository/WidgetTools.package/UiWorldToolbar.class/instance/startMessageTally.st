private
startMessageTally
	(self confirm: 'MessageTally will start now,
and stop when the cursor goes
to the top of the screen') ifTrue:
		[MessageTally spyOn:
			[[EventSensor default peekPosition y > 0] whileTrue: [Project current world doOneCycle]]]