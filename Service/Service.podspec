Pod::Spec.new do |spec|
  spec.name          = 'Service'
  spec.version       = '1.0'
  spec.license       = 'LICENCE'
  spec.homepage      = 'https://github.com/pallavisharma-13/ServiceAPI'
  spec.authors       = { 'Pallavi Sharma' => 'pallavi.s@hcl.com' }
  spec.summary       = 'Its Service Framework for APIs'
  spec.source        = { :git => 'https://github.com/pallavisharma-13/ServiceAPI.git', :tag => spec.version }
spec.source_files  = 'Classes', 'Service/**/*.{swift}'
  spec.module_name   = 'Rich'
  spec.swift_version = '5.0'
end