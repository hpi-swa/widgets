events
nextCellFor: currentCell direction: aSymbol

	| deltaMap nextCellBlock skipBlock nextCell oldCell |	
	self orientation == #default ifTrue: [^ super nextCellFor: currentCell direction: aSymbol].
	
	deltaMap := Dictionary newFrom: {
		#up       -> [:cell | (cell y = 1 and: [cell x > 1])
									ifFalse: [cell - (0@1)]
									ifTrue: [(cell x - 1) @ vRowCount]].
		#down     -> [:cell | (cell y = vRowCount and: [cell x < vColumnCount])
									ifFalse: [cell + (0@1)]
									ifTrue: [(cell x + 1) @ 1]].
		#left     -> [:cell | (cell x = 1 and: [cell y > 1])
									ifFalse: [cell - (1@0)]
									ifTrue: [vColumnCount @ (cell y - 1)]].
		#right    -> [:cell | (cell x = vColumnCount and: [cell y < vRowCount])
									ifFalse: [cell + (1@0)]
									ifTrue: [1 @ (cell y + 1)]].
		#home     -> [:cell | self cellIndexDetect: [:c |
							(c notNil
								and: [c third "row info" isSeparator not])
								and: [c third items first valueOfProperty: #selectable]]].
		#end      -> [:cell | vColumnCount @ vRowCount]}.
	{
		#pageUp   -> [:cell | |r| r := cell. 3 timesRepeat: [r := (deltaMap at: #up) value: r]. r].
		#pageDown -> [:cell | |r| r := cell. 3 timesRepeat: [r := (deltaMap at: #down) value: r]. r].
	} do: [:assoc | deltaMap at: assoc key put: assoc value].
	
	nextCellBlock := [:cell | ((deltaMap at: aSymbol) value: cell) min: vColumnCount @ vRowCount max: 1@1].
	nextCell := nextCellBlock value: currentCell.
	
	"Skip separators but only if there are enough cells left."
	oldCell := nil.
	skipBlock := [
		| item |
		item := self morphAt: nextCell.
		(item isNil
			or: [(item valueOfProperty: #selectable) not])
			or: [(self rowAtCell: nextCell) visible not]].
	[skipBlock value and: [nextCell ~= oldCell]] whileTrue: [
		oldCell := nextCell.
		nextCell := nextCellBlock value: nextCell].

	^ skipBlock value
		ifTrue: [currentCell]
		ifFalse: [nextCell]