baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				
				package: 'AutoCorrection-Core';
				package: 'AutoCorrection-Tests' with: [spec requires: #('AutoCorrection-Core')];
				yourself.
			spec
				group: 'default' with: #('AutoCorrection-Core');
				group: 'tests' with: #('AutoCorrection-Tests')];
				yourself