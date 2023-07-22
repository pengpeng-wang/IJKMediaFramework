#
# Be sure to run `pod lib lint IJKMediaFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IJKMediaFramework'
  s.version          = '0.1.3'
  s.summary          = 'ijkplayer framework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/pengpeng-wang/IJKMediaFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pengpeng-wang' => '841987035@qq.com' }
  s.source           = { :git => 'https://github.com/pengpeng-wang/IJKMediaFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  # s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.ios.deployment_target = '12.0'

  # s.source_files = 'IJKMediaFramework/Classes/**/*'
  
  s.vendored_frameworks = 'IJKMediaFramework/Classes/IJKMediaFramework.framework'
  
  s.frameworks  = "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "MobileCoreServices", "OpenGLES", "QuartzCore", "VideoToolbox", "Foundation", "UIKit", "MediaPlayer"
  s.libraries   = "bz2", "z", "c++"

  s.requires_arc = true
  s.static_framework = true
  
  # s.resource_bundles = {
  #   'IJKMediaFramework' => ['IJKMediaFramework/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
