| gitPath |
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Metacello new
  baseline: 'Widgets';
  repository: 'filetree://', gitPath, '/widgets/repository';
  get.

Metacello new
  baseline: 'Widgets';
  repository: 'filetree://', gitPath, '/widgets/repository';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfWidgets' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

