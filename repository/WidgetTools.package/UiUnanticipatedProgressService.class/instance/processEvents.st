event handling
processEvents

	entries ifNil: [^ self].
	entries ifEmpty: [^ self].
		
	Sensor redButtonPressed ifTrue: [ Sensor mousePoint in: [:pt |
		(entries detect: [:entry | self isEntry: entry clickedAtPoint: pt] ifNone: [])
			ifNotNil: [:clickedEntry | | oldUiProcess |
				oldUiProcess := Project uiProcess.
				oldUiProcess suspend.
				
				WorldState addDeferredUIMessage: [ | debugger builder spec |
					"See Debugger>>#openNotifierContents:label:."
					debugger := (Debugger new
						process: oldUiProcess
						controller: nil "not needed for Morphic"
						context: clickedEntry context)
							errorWasInUIProcess: true.
					builder := ToolBuilder default.
					spec := debugger buildNotifierWith: builder label: 'User Interrupt' message: nil.
					debugger expandStack.
					builder openDebugger: spec.].
							
				Project spawnNewProcess.
	] "clicked entry" ] "mouse point" ] "button press"