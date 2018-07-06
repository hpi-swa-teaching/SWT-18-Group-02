baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			
			spec project: 'OCompletion' with: [
				spec
					className: 'ConfigurationOfOCompletion';
					repository: 'http://www.squeaksource.com/MetacelloRepository';
					version: #stable].
			
			spec
				package: 'Autocorrect-Core' with: [spec requires: #(OCompletion)];
				package: 'Autocorrect-Modules' with: [spec 
														requires: #('Autocorrect-Core');
														postLoadDoIt: #postLoadInitialization];
				package: 'Autocorrect-Tests-Core' with: [spec requires: #('Autocorrect-Core')];
				package: 'Autocorrect-Tests-Modules' with: [spec requires: #('Autocorrect-Modules')];
				yourself.
			spec
				group: 'default' with: #('Autocorrect-Core' 'Autocorrect-Modules');
				group: 'tests' with: #('Autocorrect-Tests-Core' 'Autocorrect-Tests-Modules')];
				yourself