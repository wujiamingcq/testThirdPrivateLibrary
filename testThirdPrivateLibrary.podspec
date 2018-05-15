#
#  Be sure to run `pod spec lint testThirdPrivateLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "testThirdPrivateLibrary"
  s.version      = "0.4"
  s.summary      = "不写就报警，毛病"

  s.description  = <<-DESC
                    非要写描述，烦不烦
                   DESC

  s.homepage     = "http://www.baidu.com"



  #s.license      = "MIT (example)"
   s.license      = { :type => "MIT", :file => "FILE_LICENSE" }



  s.author             = { "yuchenH" => "huangyuchen@caiqr.com" }


  s.platform     = :ios, "9.0"




  s.source       = { :git => "https://github.com/wujiamingcq/testThirdPrivateLibrary.git", :tag => "#{s.version}" }
  s.source_files  = "testThirdPrivateLibrary/*.swift"

  #s.exclude_files = "Classes/Exclude"


  s.swift_version = '3.2' 

  # s.framework  = "SomeFramework"
  s.frameworks = "Foundation","UIKit"
  #s.static_framework = true
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  #s.requires_arc = true
  #s.vendored_libraries = '*.a'
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  s.xcconfig = {
          'OTHER_LDFLAGS' => '$(inherited) -lstdc++',
      }
  s.subspec 'UMengUShare' do |us|

    #facebook.compiler_flags = '-Wno-incomplete-implementation -Wno-missing-prototypes'
    us.requires_arc = true
    #us.vendored_libraries = '*.a'
    us.dependencies = {
    "UMengUShare": [
      "~> 6.3.0"
    ]
  }
  end
end
