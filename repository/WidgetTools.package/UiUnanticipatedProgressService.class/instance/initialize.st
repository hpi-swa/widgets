initialization
initialize

	super initialize.
	bar := UiProgressBar new
		extent: 300@25;
		topLeft: 0@0.
	strategies := {
		UiUnanticipatedProgressStrategyForCollections new.
		UiUnanticipatedProgressStrategyForBenchmarks new.
		UiUnanticipatedProgressStrategyForDoIts new.
		UiUnanticipatedProgressStrategyForSmallIntegers new}.
	isWindowHighlighted := false.