as yet unclassified
updateEventHandler

	self eventHandler disconnectSignal: #mouseWheelUp: from: self verticalScrollBar selector: #decreaseValueBySingleStep.
	self eventHandler disconnectSignal: #mouseWheelDown: from: self verticalScrollBar selector: #increaseValueBySingleStep.
	self viewport disconnectSignal: #mouseWheelUp from: self verticalScrollBar selector: #decreaseValueBySingleStep.
	self viewport disconnectSignal: #mouseWheelDown from: self verticalScrollBar selector: #increaseValueBySingleStep.

	self eventHandler disconnectSignal: #mouseWheelUp: from: self horizontalScrollBar selector: #decreaseValueBySingleStep.
	self eventHandler disconnectSignal: #mouseWheelDown: from: self horizontalScrollBar selector: #increaseValueBySingleStep.
	self viewport disconnectSignal: #mouseWheelUp from: self horizontalScrollBar selector: #decreaseValueBySingleStep.
	self viewport disconnectSignal: #mouseWheelDown from: self horizontalScrollBar selector: #increaseValueBySingleStep.

	(self listOrientation = #horizontal or: [self listOrientation = #horizontalSingleRow])
		ifTrue: [
			self connect: self eventHandler signal: #mouseWheelUp: to: self horizontalScrollBar selector: #decreaseValueBySingleStep.
			self connect: self eventHandler signal: #mouseWheelDown: to: self horizontalScrollBar selector: #increaseValueBySingleStep.			
			self connect: self viewport signal: #mouseWheelUp to: self horizontalScrollBar selector: #decreaseValueBySingleStep.
			self connect: self viewport signal: #mouseWheelDown to: self horizontalScrollBar selector: #increaseValueBySingleStep.			
			]
		ifFalse: [
			self connect: self eventHandler signal: #mouseWheelUp: to: self verticalScrollBar selector: #decreaseValueBySingleStep.
			self connect: self eventHandler signal: #mouseWheelDown: to: self verticalScrollBar selector: #increaseValueBySingleStep.
			self connect: self viewport signal: #mouseWheelUp to: self verticalScrollBar selector: #decreaseValueBySingleStep.
			self connect: self viewport signal: #mouseWheelDown to: self verticalScrollBar selector: #increaseValueBySingleStep.
			]