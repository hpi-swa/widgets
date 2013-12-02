To enable the unanticipated progress service, just evaluate: "UiUnanticipatedProgressService start."

Then, try evaluating the following examples:

(1 to: 2500) collect: [:ea |
	(1 to: ea) inject: 1 into: [:prod :i |
		prod := prod * i]].

(1 to: 3) do: [:i |
	(1 to: 5) do: [:j |
		(1 to: 2) do: [:k |
			(Delay forMilliseconds: 250) wait]]]