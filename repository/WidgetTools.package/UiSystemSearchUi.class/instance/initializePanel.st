ui - private
initializePanel
	"This code is auto-generated. DO NOT modify it because another generation step will overwrite all changes."
	
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: (520@297).
	panel position: (0@0).
	panel hResizing: (#shrinkWrap).
	panel vResizing: (#shrinkWrap).
	panel minWidth: (2).
	panel minHeight: (2).
	panel cellInset: (4).
	panel cellPositioning: (#leftCenter).
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
	panel balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.929)).
	panel color: ((Color r: 0.9 g: 0.9 b: 0.9)).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	unnamedMorph1 := UiContainer new.
	unnamedMorph1 changeTableLayout.
	unnamedMorph1 extent: (512@208).
	unnamedMorph1 position: (4@4).
	unnamedMorph1 hResizing: (#spaceFill).
	unnamedMorph1 vResizing: (#spaceFill).
	unnamedMorph1 minWidth: (2).
	unnamedMorph1 minHeight: (2).
	unnamedMorph1 cellInset: (4).
	unnamedMorph1 cellPositioning: (#center).
	unnamedMorph1 cellSpacing: (#none).
	unnamedMorph1 layoutInset: (4).
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
	results := UiListWidget new.
	results extent: (200@200).
	results position: (8@8).
	results hResizing: (#spaceFill).
	results vResizing: (#spaceFill).
	results minWidth: (200).
	results minHeight: (200).
	results cellInset: (0).
	results cellPositioning: (#center).
	results cellSpacing: (#none).
	results layoutInset: (0).
	results listCentering: (#topLeft).
	results listDirection: (#topToBottom).
	results listSpacing: (#none).
	results maxCellSize: (1073741823).
	results minCellSize: (0).
	results wrapCentering: (#topLeft).
	results wrapDirection: (#none).
	results frameFractions: (0@0 corner: 1@1).
	results frameOffsets: (0@0 corner: 0@0).
	results balloonText: (nil).
	results balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.945)).
	results widgetResizable: (false).
	results horizontalScrollBarPolicy: (#alwaysOff).
	results verticalScrollBarPolicy: (#asNeeded).
	results outerBorderWidth: (0).
	results scrollBarThickness: (9).
	results modelClass: (UiPropertyItemNode).
	results horizontalHeaderVisible: (false).
	results verticalHeaderVisible: (false).
	results selectionBehavior: (#selectRows).
	results selectionColor: ((Color r: 0.772 g: 0.858 b: 1.0)).
	results selectionMode: (UiViewSingleSelection).
	results setProperty: #objectName toValue: 'results'.
	unnamedMorph1 addMorphBack: results.
	view := UiTreeView new.
	view extent: (300@200).
	view position: (212@8).
	view hResizing: (#spaceFill).
	view vResizing: (#spaceFill).
	view minWidth: (300).
	view minHeight: (200).
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
	view balloonText: (nil).
	view balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	view widgetResizable: (false).
	view horizontalScrollBarPolicy: (#asNeeded).
	view verticalScrollBarPolicy: (#asNeeded).
	view outerBorderWidth: (0).
	view scrollBarThickness: (9).
	view modelClass: (nil).
	view horizontalHeaderVisible: (true).
	view verticalHeaderVisible: (false).
	view selectionBehavior: (#selectRows).
	view selectionColor: ((Color r: 0.772 g: 0.858 b: 1.0)).
	view selectionMode: (UiViewSingleSelection).
	view setProperty: #objectName toValue: 'view'.
	unnamedMorph1 addMorphBack: view.
	panel addMorphBack: unnamedMorph1.
	unnamedMorph2 := UiContainer new.
	unnamedMorph2 changeTableLayout.
	unnamedMorph2 extent: (512@22).
	unnamedMorph2 position: (4@216).
	unnamedMorph2 hResizing: (#spaceFill).
	unnamedMorph2 vResizing: (#shrinkWrap).
	unnamedMorph2 minWidth: (2).
	unnamedMorph2 minHeight: (2).
	unnamedMorph2 cellInset: (10).
	unnamedMorph2 cellPositioning: (#center).
	unnamedMorph2 cellSpacing: (#none).
	unnamedMorph2 layoutInset: (0).
	unnamedMorph2 listCentering: (#topLeft).
	unnamedMorph2 listDirection: (#leftToRight).
	unnamedMorph2 listSpacing: (#none).
	unnamedMorph2 maxCellSize: (1073741823).
	unnamedMorph2 minCellSize: (0).
	unnamedMorph2 wrapCentering: (#topLeft).
	unnamedMorph2 wrapDirection: (#none).
	unnamedMorph2 frameFractions: (0@0 corner: 1@1).
	unnamedMorph2 frameOffsets: (0@0 corner: 0@0).
	unnamedMorph2 balloonText: (nil).
	unnamedMorph2 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	unnamedMorph2 color: (Color transparent).
	unnamedMorph2 borderWidth: (0).
	unnamedMorph2 borderStyle2: (#simple).
	unnamedMorph2 borderColor: (Color black).
	searchEdit := UiLineEdit new.
	searchEdit extent: (377@20).
	searchEdit position: (4@217).
	searchEdit hResizing: (#spaceFill).
	searchEdit vResizing: (#rigid).
	searchEdit minWidth: (2).
	searchEdit minHeight: (2).
	searchEdit cellInset: (0).
	searchEdit cellPositioning: (#center).
	searchEdit cellSpacing: (#none).
	searchEdit layoutInset: (0).
	searchEdit listCentering: (#topLeft).
	searchEdit listDirection: (#topToBottom).
	searchEdit listSpacing: (#none).
	searchEdit maxCellSize: (1073741823).
	searchEdit minCellSize: (0).
	searchEdit wrapCentering: (#topLeft).
	searchEdit wrapDirection: (#none).
	searchEdit frameFractions: (0@0 corner: 1@1).
	searchEdit frameOffsets: (0@0 corner: 0@0).
	searchEdit balloonText: (nil).
	searchEdit balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	searchEdit widgetResizable: (false).
	searchEdit horizontalScrollBarPolicy: (#alwaysOff).
	searchEdit verticalScrollBarPolicy: (#alwaysOff).
	searchEdit outerBorderWidth: (1).
	searchEdit scrollBarThickness: (9).
	searchEdit theText: ('').
	searchEdit readOnly: (false).
	searchEdit autoConvert: (false).
	searchEdit autoAccept: (false).
	searchEdit acceptOnFocusLost: (true).
	searchEdit scrollingMode: (#none).
	searchEdit scrollingLimit: (10).
	searchEdit helpText: ('Search...').
	searchEdit hideCursor: (true).
	searchEdit setProperty: #objectName toValue: 'searchEdit'.
	unnamedMorph2 addMorphBack: searchEdit.
	prevBtn := UiPushButton new.
	prevBtn changeTableLayout.
	prevBtn extent: (55@21).
	prevBtn position: (391@216).
	prevBtn hResizing: (#shrinkWrap).
	prevBtn vResizing: (#shrinkWrap).
	prevBtn minWidth: (2).
	prevBtn minHeight: (2).
	prevBtn cellInset: (4).
	prevBtn cellPositioning: (#center).
	prevBtn cellSpacing: (#none).
	prevBtn layoutInset: (2@0 corner: 2@0).
	prevBtn listCentering: (#topLeft).
	prevBtn listDirection: (#leftToRight).
	prevBtn listSpacing: (#none).
	prevBtn maxCellSize: (1073741823).
	prevBtn minCellSize: (0).
	prevBtn wrapCentering: (#topLeft).
	prevBtn wrapDirection: (#none).
	prevBtn frameFractions: (0@0 corner: 1@1).
	prevBtn frameOffsets: (0@0 corner: 0@0).
	prevBtn balloonText: (nil).
	prevBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	prevBtn enabled: (true).
	prevBtn setProperty: #iconByDesigner toValue: 'nil'.
	prevBtn icon: (nil).
	prevBtn text: ('Find Prev').
	prevBtn color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	prevBtn checkable: (false).
	prevBtn checked: (false).
	prevBtn autoExclusive: (false).
	prevBtn setProperty: #objectName toValue: 'prevBtn'.
	unnamedMorph2 addMorphBack: prevBtn.
	nextBtn := UiPushButton new.
	nextBtn changeTableLayout.
	nextBtn extent: (56@21).
	nextBtn position: (458@216).
	nextBtn hResizing: (#shrinkWrap).
	nextBtn vResizing: (#shrinkWrap).
	nextBtn minWidth: (2).
	nextBtn minHeight: (2).
	nextBtn cellInset: (4).
	nextBtn cellPositioning: (#center).
	nextBtn cellSpacing: (#none).
	nextBtn layoutInset: (2@0 corner: 2@0).
	nextBtn listCentering: (#topLeft).
	nextBtn listDirection: (#leftToRight).
	nextBtn listSpacing: (#none).
	nextBtn maxCellSize: (1073741823).
	nextBtn minCellSize: (0).
	nextBtn wrapCentering: (#topLeft).
	nextBtn wrapDirection: (#none).
	nextBtn frameFractions: (0@0 corner: 1@1).
	nextBtn frameOffsets: (0@0 corner: 0@0).
	nextBtn balloonText: (nil).
	nextBtn balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	nextBtn enabled: (true).
	nextBtn setProperty: #iconByDesigner toValue: 'nil'.
	nextBtn icon: (nil).
	nextBtn text: ('Find Next').
	nextBtn color: ((Color r: 0.8 g: 0.8 b: 0.8)).
	nextBtn checkable: (false).
	nextBtn checked: (false).
	nextBtn autoExclusive: (false).
	nextBtn setProperty: #objectName toValue: 'nextBtn'.
	unnamedMorph2 addMorphBack: nextBtn.
	panel addMorphBack: unnamedMorph2.
	concurrentChk := UiCheckBox new.
	concurrentChk changeTableLayout.
	concurrentChk extent: (139@21).
	concurrentChk position: (4@243).
	concurrentChk hResizing: (#shrinkWrap).
	concurrentChk vResizing: (#shrinkWrap).
	concurrentChk minWidth: (2).
	concurrentChk minHeight: (2).
	concurrentChk cellInset: (4).
	concurrentChk cellPositioning: (#center).
	concurrentChk cellSpacing: (#none).
	concurrentChk layoutInset: (2@0 corner: 2@0).
	concurrentChk listCentering: (#topLeft).
	concurrentChk listDirection: (#leftToRight).
	concurrentChk listSpacing: (#none).
	concurrentChk maxCellSize: (1073741823).
	concurrentChk minCellSize: (0).
	concurrentChk wrapCentering: (#topLeft).
	concurrentChk wrapDirection: (#none).
	concurrentChk frameFractions: (0@0 corner: 1@1).
	concurrentChk frameOffsets: (0@0 corner: 0@0).
	concurrentChk balloonText: (nil).
	concurrentChk balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	concurrentChk enabled: (true).
	concurrentChk setProperty: #iconByDesigner toValue: 'nil'.
	concurrentChk icon: (nil).
	concurrentChk text: ('Search in background').
	concurrentChk color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	concurrentChk checkable: (true).
	concurrentChk checked: (false).
	concurrentChk autoExclusive: (false).
	concurrentChk setProperty: #objectName toValue: 'concurrentChk'.
	panel addMorphBack: concurrentChk.
	unnamedMorph3 := UiContainer new.
	unnamedMorph3 extent: (512@2).
	unnamedMorph3 position: (4@268).
	unnamedMorph3 hResizing: (#spaceFill).
	unnamedMorph3 vResizing: (#rigid).
	unnamedMorph3 minWidth: (2).
	unnamedMorph3 minHeight: (2).
	unnamedMorph3 cellInset: (4).
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
	unnamedMorph3 balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.933)).
	unnamedMorph3 color: ((Color r: 0.85 g: 0.85 b: 0.85)).
	unnamedMorph3 borderWidth: (1).
	unnamedMorph3 borderStyle2: (#inset).
	unnamedMorph3 borderColor: (#inset).
	panel addMorphBack: unnamedMorph3.
	statusLbl := UiLabel new.
	statusLbl changeTableLayout.
	statusLbl extent: (41@19).
	statusLbl position: (4@274).
	statusLbl hResizing: (#shrinkWrap).
	statusLbl vResizing: (#shrinkWrap).
	statusLbl minWidth: (2).
	statusLbl minHeight: (2).
	statusLbl cellInset: (0).
	statusLbl cellPositioning: (#center).
	statusLbl cellSpacing: (#none).
	statusLbl layoutInset: (0).
	statusLbl listCentering: (#topLeft).
	statusLbl listDirection: (#leftToRight).
	statusLbl listSpacing: (#none).
	statusLbl maxCellSize: (1073741823).
	statusLbl minCellSize: (0).
	statusLbl wrapCentering: (#topLeft).
	statusLbl wrapDirection: (#none).
	statusLbl frameFractions: (0@0 corner: 1@1).
	statusLbl frameOffsets: (0@0 corner: 0@0).
	statusLbl balloonText: (nil).
	statusLbl balloonColor: ((TranslucentColor r: 0.91 g: 0.94 b: 1.0 alpha: 0.937)).
	statusLbl text: ('Status...').
	statusLbl setProperty: #formByDesigner toValue: 'nil'.
	statusLbl form: (nil).
	statusLbl setProperty: #objectName toValue: 'statusLbl'.
	panel addMorphBack: statusLbl.
	panel setProperty: #uiClassName toValue: 'UiSystemSearch'.