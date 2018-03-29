#
# Be sure to run `pod lib lint QXMFatherHomeTbaListMoreVC_Category.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QXMFatherHomeTbaListMoreVC_Category'
  s.version          = '0.1.0'
  s.summary          = 'QXMFatherHomeTbaListMoreVC_Category.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'QXMFatherHomeTbaListMoreVC首页功能分类'

  s.homepage         = 'https://github.com/zhangxiaomeng1/QXMFatherHomeTbaListMoreVC_Category.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangxieomeng1' => 'zhangxiaomeng@xiangshang360.com' }
  s.source           = { :git => 'https://github.com/zhangxiaomeng1/QXMFatherHomeTbaListMoreVC_Category.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'QXMFatherHomeTbaListMoreVC_Category/Classes/**/*'
  
  # s.resource_bundles = {
  #   'QXMFatherHomeTbaListMoreVC_Category' => ['QXMFatherHomeTbaListMoreVC_Category/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
  s.dependency 'XM_Mediator', '~> 1.0.0'
  
end
