framework_name = 'Dash.xcframework'

Pod::Spec.new do |spec|
  spec.name          = 'dash'
  spec.version       = '0.0.1'
  spec.license       = { :file => '../LICENSE' }
  spec.homepage      = 'https://github.com/YourGitHubAccount/repo_name'
  spec.authors       = { 'Your Name' => 'your-email@example.com' }
  spec.summary       = 'Embedded instance of milli for dash'

  spec.source              = { :path => '.' }
  spec.source_files        = 'Classes/**/*'
  spec.public_header_files = 'Classes/**/*.h'
  spec.vendored_frameworks = "Frameworks/#{framework_name}"

  spec.ios.deployment_target = '11.0'
  spec.osx.deployment_target = '10.14'
end