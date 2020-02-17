ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (250@150).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel cellGap: (4).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (4).
	panel listCentering: (#topLeft).
	panel listDirection: (#topToBottom).
	panel listSpacing: (#none).
	panel maxCellSize: (1073741823).
	panel minCellSize: (0).
	panel wrapCentering: (#topLeft).
	panel wrapDirection: (#none).
	panel frameFractions: (0@0 corner: 1@1).
	panel frameOffsets: (0@0 corner: 0@0).
	panel balloonText: (nil).
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	panel color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	messageList := UiListWidget new.
	messageList extent: (242@115).
	messageList position: (4@4).
	messageList hResizing: (#spaceFill).
	messageList vResizing: (#spaceFill).
	messageList cellInset: (0).
	messageList cellPositioning: (#center).
	messageList cellSpacing: (#none).
	messageList layoutInset: (0).
	messageList listCentering: (#topLeft).
	messageList listDirection: (#topToBottom).
	messageList listSpacing: (#none).
	messageList maxCellSize: (1073741823).
	messageList minCellSize: (0).
	messageList wrapCentering: (#topLeft).
	messageList wrapDirection: (#none).
	messageList frameFractions: (0@0 corner: 1@1).
	messageList frameOffsets: (0@0 corner: 0@0).
	messageList balloonText: (nil).
	messageList balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.949)).
	messageList modelClass: (UiPropertyItemNode).
	messageList horizontalHeaderVisible: (false).
	messageList verticalHeaderVisible: (false).
	messageList setProperty: #objectName toValue: 'messageList'.
	panel addMorphBack: messageList.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (242@22).
	unnamedMorph1 position: (4@123).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 cellGap: (4).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (0).
	unnamedMorph1 listCentering: (#topLeft).
	unnamedMorph1 listDirection: (#leftToRight).
	unnamedMorph1 listSpacing: (#none).
	unnamedMorph1 maxCellSize: (1073741823).
	unnamedMorph1 minCellSize: (0).
	unnamedMorph1 wrapCentering: (#topLeft).
	unnamedMorph1 wrapDirection: (#none).
	unnamedMorph1 frameFractions: (0@0 corner: 1@1).
	unnamedMorph1 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph1 balloonText: (nil).
	unnamedMorph1 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	unnamedMorph1 color: (Color transparent).
	unnamedMorph1 borderWidth: (0).
	unnamedMorph1 borderStyle2: (#simple).
	unnamedMorph1 borderColor: (Color black).
	unnamedMorph2 := UiSpacer new.
	unnamedMorph2 extent: (61@20).
	unnamedMorph2 position: (4@124).
	unnamedMorph2 hResizing: (#spaceFill).
	unnamedMorph2 vResizing: (#rigid).
	unnamedMorph2 cellGap: (4).
	unnamedMorph2 cellPositioning: (#center).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (4).
	unnamedMorph2 listCentering: (#topLeft).
	unnamedMorph2 listDirection: (#topToBottom).
	unnamedMorph2 listSpacing: (#none).
	unnamedMorph2 maxCellSize: (1073741823).
	unnamedMorph2 minCellSize: (0).
	unnamedMorph2 wrapCentering: (#topLeft).
	unnamedMorph2 wrapDirection: (#none).
	unnamedMorph2 frameFractions: (0@0 corner: 1@1).
	unnamedMorph2 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph2 balloonText: (nil).
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	unnamedMorph2 color: (Color blue).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	unnamedMorph2 orientation: (#horizontal).
	unnamedMorph1 addMorphBack: unnamedMorph2.
	okButton := UiPushButton new.
	okButton changeTableLayout.
	okButton extent: (42@21).
	okButton position: (69@123).
	okButton hResizing: (#shrinkWrap).
	okButton vResizing: (#shrinkWrap).
	okButton cellGap: (4).
	okButton cellPositioning: (#center).
	okButton cellSpacing: (#none).
	okButton layoutInset: (2@0 corner: 2@0).
	okButton listCentering: (#topLeft).
	okButton listDirection: (#leftToRight).
	okButton listSpacing: (#none).
	okButton maxCellSize: (1073741823).
	okButton minCellSize: (0).
	okButton wrapCentering: (#topLeft).
	okButton wrapDirection: (#none).
	okButton frameFractions: (0@0 corner: 1@1).
	okButton frameOffsets: (0@0 corner: 0@0).
	okButton balloonText: (nil).
	okButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	okButton setProperty: #iconByDesigner toValue: 'UiSilkIcons acceptIcon'.
	okButton icon: (UiSilkIcons acceptIcon).
	okButton text: ('OK').
	okButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	okButton checkable: (false).
	okButton checked: (false).
	okButton autoExclusive: (false).
	okButton setProperty: #objectName toValue: 'okButton'.
	unnamedMorph1 addMorphBack: okButton.
	cancelButton := UiPushButton new.
	cancelButton changeTableLayout.
	cancelButton extent: (62@21).
	cancelButton position: (117@123).
	cancelButton hResizing: (#shrinkWrap).
	cancelButton vResizing: (#shrinkWrap).
	cancelButton cellGap: (4).
	cancelButton cellPositioning: (#center).
	cancelButton cellSpacing: (#none).
	cancelButton layoutInset: (2@0 corner: 2@0).
	cancelButton listCentering: (#topLeft).
	cancelButton listDirection: (#leftToRight).
	cancelButton listSpacing: (#none).
	cancelButton maxCellSize: (1073741823).
	cancelButton minCellSize: (0).
	cancelButton wrapCentering: (#topLeft).
	cancelButton wrapDirection: (#none).
	cancelButton frameFractions: (0@0 corner: 1@1).
	cancelButton frameOffsets: (0@0 corner: 0@0).
	cancelButton balloonText: (nil).
	cancelButton balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	cancelButton setProperty: #iconByDesigner toValue: 'UiFugueIcons crossCircleIcon'.
	cancelButton icon: (UiFugueIcons crossCircleIcon).
	cancelButton text: ('Cancel').
	cancelButton color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	cancelButton checkable: (false).
	cancelButton checked: (false).
	cancelButton autoExclusive: (false).
	cancelButton setProperty: #objectName toValue: 'cancelButton'.
	unnamedMorph1 addMorphBack: cancelButton.
	unnamedMorph3 := UiSpacer new.
	unnamedMorph3 extent: (61@20).
	unnamedMorph3 position: (185@124).
	unnamedMorph3 hResizing: (#spaceFill).
	unnamedMorph3 vResizing: (#rigid).
	unnamedMorph3 cellGap: (4).
	unnamedMorph3 cellPositioning: (#center).
	unnamedMorph3 cellSpacing: (#none).
	unnamedMorph3 layoutInset: (4).
	unnamedMorph3 listCentering: (#topLeft).
	unnamedMorph3 listDirection: (#topToBottom).
	unnamedMorph3 listSpacing: (#none).
	unnamedMorph3 maxCellSize: (1073741823).
	unnamedMorph3 minCellSize: (0).
	unnamedMorph3 wrapCentering: (#topLeft).
	unnamedMorph3 wrapDirection: (#none).
	unnamedMorph3 frameFractions: (0@0 corner: 1@1).
	unnamedMorph3 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph3 balloonText: (nil).
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	unnamedMorph3 color: (Color blue).
	unnamedMorph3 borderWidth: (0).
	unnamedMorph3 borderStyle2: (#simple).
	unnamedMorph3 borderColor: (Color black).
	unnamedMorph3 orientation: (#horizontal).
	unnamedMorph1 addMorphBack: unnamedMorph3.
	panel addMorphBack: unnamedMorph1.
	panel setProperty: #uiClassName toValue: 'UiMessageListDialog'.