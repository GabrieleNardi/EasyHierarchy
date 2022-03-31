
Pod::Spec.new do |s|
  s.name             = 'EasyHierarchy'
  s.version          = '0.1.0'
  s.summary          = 'A short description of EasyHierarchy.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/GabrieleNardi/EasyHierarchy'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gabe<N>' => 'gabriele.nardi.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/GabrieleNardi/EasyHierarchy.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Gabriele92Nardi'

  s.ios.deployment_target = '11.0'

  s.source_files = 'EasyHierarchy/Classes/**/*'
  
end
