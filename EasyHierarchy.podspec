
Pod::Spec.new do |s|
  s.name             = 'EasyHierarchy'
  s.version          = '0.1.0'
  s.summary          = 'An easy to use way to write UI by code using UIKit'
  s.description      = <<-DESC
This library is an easy way to write UI by code. It allows you to avoid configuration or constraints methods.

Instead of custom components, which can become difficult to handle, it provides extensions to system UI components.
                       DESC

  s.homepage         = 'https://github.com/GabrieleNardi/EasyHierarchy'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gabe<N>' => 'gabriele.nardi.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/GabrieleNardi/EasyHierarchy.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Gabriele92Nardi'

  s.ios.deployment_target = '11.0'

  s.source_files = 'EasyHierarchy/Classes/**/*'
  
end
