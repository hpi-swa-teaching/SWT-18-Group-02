baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'Autocorrect-Core' with: [spec requires: #('OcompletionSqueakCompatibility')];
				package: 'Autocorrect-Modules' with: [spec requires: #('Autocorrect-Core')];
				package: 'Autocorrect-Tests-Core' with: [spec requires: #('Autocorrect-Core')];
				package: 'Autocorrect-Tests-Modules' with: [spec requires: #('Autocorrect-Modules')];
				yourself.
			spec
				group: 'default' with: #('Autocorrect-Core' 'Autocorrect-Modules');
				group: 'tests' with: #('Autocorrect-Tests-Core' 'Autocorrect-Tests-Modules')];
				yourself