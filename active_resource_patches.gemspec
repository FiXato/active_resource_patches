Gem::Specification.new do |s|
  # Project
  s.name         = 'active_resource_patches'
  s.summary      = "ActiveResourcePatches contains a set of patches that haven't made it into Rails (yet)."
  s.description  = "ActiveResourcePatches contains a set of patches that haven't made it into Rails (yet)."
  s.version      = '0.0.2'
  s.date         = '2009-07-30'
  s.platform     = Gem::Platform::RUBY
  s.authors      = ["Filip H.F. Slagter"]
  s.email        = "fixato@gmail.com"
  s.homepage     = "http://www.github.com/FiXato/active_resource_patches"
  
  # Files
  spec_files     = %w[]
  root_files     = %w[active_resource_patches.gemspec MIT-LICENSE README.rdoc Rakefile]
  lib_files      = %w[active_resource_patches]
  other_files    = %w[spec/spec_helper.rb spec/spec.opts]
  s.require_path = "lib"
  s.test_files   = spec_files.map {|f| 'spec/%s_spec.rb' % f}
  s.files        = root_files + s.test_files + lib_files.map {|f| 'lib/%s.rb' % f} + other_files

  # rdoc
  s.has_rdoc         = true
  s.extra_rdoc_files = %w[ README.rdoc MIT-LICENSE ]
  s.rdoc_options << '--inline-source' << '--line-numbers' << '--main' << 'README.rdoc'
  
  # Requirements
  s.add_dependency 'activeresource', '= 2.3.3'
  s.required_ruby_version = ">= 1.8.0"
end
