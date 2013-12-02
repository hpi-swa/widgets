ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (403@193).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel cellInset: (4).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.933)).
	panel color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	panel borderWidth: (1).
	panel borderStyle2: (#simple).
	panel borderColor: ((Color r: 0.6 g: 0.6 b: 0.6)).
	panel setProperty: #objectName toValue: 'panel'.
	view := UiTreeView new.
	view extent: (393@156).
	view position: (5@5).
	view hResizing: (#spaceFill).
	view vResizing: (#spaceFill).
	view cellInset: (0).
	view cellPositioning: (#center).
	view cellSpacing: (#none).
	view layoutInset: (0).
	view listCentering: (#topLeft).
	view listDirection: (#topToBottom).
	view listSpacing: (#none).
	view maxCellSize: (1073741823).
	view minCellSize: (0).
	view wrapCentering: (#topLeft).
	view wrapDirection: (#none).
	view frameFractions: (0@0 corner: 1@1).
	view frameOffsets: (0@0 corner: 0@0).
	view modelClass: (UiSystemProgressModel).
	view horizontalHeaderVisible: (false).
	view verticalHeaderVisible: (false).
	view selectionBehavior: (#selectRows).
	view selectionColor: ((Color r: 0.772 g: 0.858 b: 1.0)).
	view selectionMode: (UiViewSingleSelection).
	view setProperty: #objectName toValue: 'view'.
	panel addMorphBack: view.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (393@22).
	unnamedMorph1 position: (5@165).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#shrinkWrap).
	unnamedMorph1 cellInset: (4).
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
	unnamedMorph2 extent: (332@10).
	unnamedMorph2 position: (5@171).
	unnamedMorph2 hResizing: (#spaceFill).
	unnamedMorph2 vResizing: (#rigid).
	unnamedMorph2 cellInset: (4).
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
	closeBtn := UiPushButton new.
	closeBtn changeTableLayout.
	closeBtn extent: (55@21).
	closeBtn position: (341@165).
	closeBtn hResizing: (#shrinkWrap).
	closeBtn vResizing: (#shrinkWrap).
	closeBtn cellInset: (4).
	closeBtn cellPositioning: (#center).
	closeBtn cellSpacing: (#none).
	closeBtn layoutInset: (2@0 corner: 2@0).
	closeBtn listCentering: (#topLeft).
	closeBtn listDirection: (#leftToRight).
	closeBtn listSpacing: (#none).
	closeBtn maxCellSize: (1073741823).
	closeBtn minCellSize: (0).
	closeBtn wrapCentering: (#topLeft).
	closeBtn wrapDirection: (#none).
	closeBtn frameFractions: (0@0 corner: 1@1).
	closeBtn frameOffsets: (0@0 corner: 0@0).
	closeBtn balloonText: (nil).
	closeBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	closeBtn enabled: (true).
	closeBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons acceptIcon'.
	closeBtn icon: (UiSilkIcons acceptIcon).
	closeBtn text: ('Close').
	closeBtn color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	closeBtn checkable: (false).
	closeBtn checked: (false).
	closeBtn autoExclusive: (false).
	closeBtn setProperty: #objectName toValue: 'closeBtn'.
	unnamedMorph1 addMorphBack: closeBtn.
	panel addMorphBack: unnamedMorph1.
	panel setProperty: #uiClassName toValue: 'UiSystemProgressMorph'.