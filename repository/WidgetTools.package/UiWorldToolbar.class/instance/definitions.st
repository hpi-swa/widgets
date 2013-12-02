private
definitions

	^{nil.
	{'Save'. UiSilkIcons diskIcon. Smalltalk. #saveSession. #iconOnly. false}.
	{'Quit'. UiSilkIcons doorInIcon. self. #quitSession. #iconOnly. false}.
	nil.
	{'Workspace'. UiSilkIcons applicationXpTerminalIcon. Workspace. #open. #iconOnly. false}.
	{'Transcript'. UiSilkIcons applicationViewListIcon. Transcript. #open. #iconOnly. false}.
"	{'System Browser'. UiSilkIcons folderExploreIcon. Smalltalk at: #OBSystemBrowser ifAbsent: []. #open. #iconOnly. false}."
	{'Monticello Browser'. UiSilkIcons worldIcon. MCWorkingCopyBrowser. #open. #iconOnly. false}.
	{'Test Runner'. UiFugueIcons clipboardTaskIcon. "UiFugueIcons tickShieldIcon." TestRunner. #open. #iconOnly. false}.
	{'Preferences'. UiSilkIcons cogIcon. PreferenceBrowser. #open. #iconOnly. false}.
	nil.
	{'Start Profiler'. UiFugueIcons alarmClockSelectIcon. self. #startMessageTally. #iconOnly. false}.
	{'Collect Garbage'. UiFugueIcons broomIcon. Smalltalk. #garbageCollect. #iconOnly. false}.
"	{'Close all debuggers'. UiSilkIcons bugDeleteIcon. Utilities. #closeAllDebuggers. #iconOnly. false}."
"	{'Set author initials.'. UiSilkIcons vcardEditIcon. Utilities. #setAuthorInitials. #iconOnly. false}."
	nil.
	{'Vivide'. UiFugueIcons leafIcon. Smalltalk at: #VivideLight ifAbsent: []. #open. #iconOnly. false}.
	{'Morphic Designer'. UiFugueIcons beansIcon. Smalltalk at: #UiDesigner ifAbsent: []. #open. #iconOnly. false}.
	{'Ressource Monitor'. UiSilkIcons chartBarIcon. Smalltalk at: #UiResourceMonitorDialog ifAbsent: []. #open. #iconOnly. false}.
	{'Icon Picker'. UiSilkIcons folderHeartIcon. Smalltalk at: #UiIconPickerDialog ifAbsent: []. #open. #iconOnly. false}.
"	{'Vivide'. UiFugueIcons lightningIcon. Smalltalk at: #Vivide ifAbsent: []. #open. #iconOnly. false}."

	nil.
	{'Refresh Toolbar'. UiSilkIcons arrowRefreshSmallIcon. self. #updateButtons. #iconOnly. false}.
	{'Help Browser'. UiSilkIcons helpIcon. Smalltalk at: #HelpBrowser ifAbsent: []. #open. #iconOnly. false}.
	}, self class addedDefinitions