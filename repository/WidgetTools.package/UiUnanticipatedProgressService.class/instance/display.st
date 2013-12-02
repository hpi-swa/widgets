drawing
display

	| buffer canvas skipped count vExtent |
	count := entries
		ifNil: [0]
		ifNotNil: [entries count: [:e | e isVisible]].
	
	"Do not show an empty box with no progress bars."
	count = 0 ifTrue: [^ self restoreDisplayIfNecessary].
	
	"Window highlight."
	self isInStackMode ifTrue: [self updateWindowHighlight].
	
	skipped := 0.
	vExtent := (bar extent x + 20) @ (count * (bar extent y + 10) + 10).
	buffer := Form
		extent: (vExtent max: (lastExtent ifNil: [0@0]))
		depth: 32.
	canvas := buffer getCanvas.
	
	"Fill buffer with background from active world."
	(lastExtent notNil and: [vExtent ~= lastExtent]) ifTrue: [
		canvas
			translateBy: ((Display width // 2) - (lastExtent x // 2) @ (Display height // 2)) negated
			during: [:c | ActiveWorld fullDrawOn: c]
		].
	lastExtent := vExtent.
	
	"Draw background for progress bar box."
	canvas
		frameAndFillRectangle: (0@0 extent: vExtent)
		fillColor: (Color gray: 0.85)
		borderWidth: 1
		borderColor: (Color gray: 0.6).
	
	entries withIndexDo: [:entry :idx |
		entry isVisible ifTrue: [
			bar
				minimum: entry startValue - 1;
				maximum: (entry maxValue ifNotNil: [:val | val + 1]); "Never show 100%"
				currentValue: entry currentValue;
				text: entry longLabel.
			
			entry bounds ifNil: [
				entry bounds: ((10 @ ((idx - skipped - 1 * (bar extent y + 10)) + 10))
					extent: bar extent)].
			
			canvas
				translateBy: entry bounds topLeft 
				during: [:c | bar fullDrawOn: c].
		] ifFalse: [skipped := skipped + 1]].

	"Copy buffer to screen."
	Display getCanvas 
		drawImage: buffer
		at: (Display extent // 2) - ((buffer width // 2) @ 0).