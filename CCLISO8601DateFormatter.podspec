Pod::Spec.new do |spec|
  spec.name = 'CCLISO8601DateFormatter'
  spec.module_name = 'CCLISO8601DateFormatter'
  spec.version = '0.0.1'
  spec.summary = 'A Cocoa NSFormatter subclass to convert dates to and from ISO-8601-formatted strings. Supports calendar, week, and ordinal formats. '
  spec.homepage = 'https://github.com/iamDecode/ISO8601DateFormatter'
  spec.license = { :type => 'CUSTOM', :file => 'LICENSE.txt' }
  spec.author = { 'Dennis Collaris' => 'd.collaris@me.com' }
  spec.source = { :git => 'https://github.com/iamDecode/ISO8601DateFormatter.git', :tag => "#{spec.version}" }
  spec.source_files = 'Sources/ISO8601DateFormatter/ISO8601DateFormatter.*'
  spec.requires_arc = false
  spec.ios.deployment_target = '8.0'
  spec.osx.deployment_target = '10.10'
  spec.swift_version = '5.0'
end
