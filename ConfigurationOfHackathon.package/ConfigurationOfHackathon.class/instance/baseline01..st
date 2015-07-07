baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		
		spec project: 'Spy2' with: [
				spec
					className: #ConfigurationOfSpy2;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/ObjectProfile/Spy2/main/' ].
		].
