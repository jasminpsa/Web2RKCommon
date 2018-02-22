Pod::Spec.new do |s|
  s.name             = 'Web2RKCommon'
  s.version          = '1.0'
  s.summary          = 'By far the most dancing and colourful view I have seen in my entire life.You will love it.'
 
  s.description      = <<-DESC
This dancing view changes itself with different amazing colours and keep rotating itself makes your app look awesome!
                       DESC
 
  s.homepage         = 'https://github.com/jasminpsa/Web2RKCommon'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Jasmin Pethani' => 'jasmine@trialx.com' }
  s.source           = { :git => 'https://github.com/jasminpsa/Web2RKCommon.git' }
 
  s.ios.deployment_target = '9.1'
  s.source_files     = 'Web2RKCommon/*'
 
end
