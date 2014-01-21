Gem::Specification.new do |s|
	s.name				= "pleiro_game"
	s.version			= "1.0.0"
	s.author			= "Sean Livingston"
	s.email				= "sean.d.livingston@gmail.com"
	s.homepage		= "http://gospelofjesusglory.com"
	s.summary			= "Short Text Game With Treasures"
	s.description	= File.read(File.join(File.dirname(__FILE__), 'README'))

	s.files 				= Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
	s.test_files		= Dir["spec/**/*"]
	s.executables		= [ 'pleiro_game' ]

	s.required_ruby_version = '>=1.9'
	s.add_development_dependency 'rspec'
end