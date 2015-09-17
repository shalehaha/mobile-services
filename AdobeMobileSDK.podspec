Pod::Spec.new do |s|
  s.name         = "AdobeMobileSDK"
  s.version      = "4.6.0"
  s.summary      = "Adobe Mobile Services SDK. Written and Supported by Adobe and is the only official Adobe Pod for the Adobe Mobile Services SDK."
  s.description  = <<-DESC
                   The Adobe Marketing Cloud Mobile libraries allow you to capture native app activity (user, usage, behavior, gestures, etc.) and forward that data to Adobe collection servers for use in Analytics reporting. Many of the libraries also include Test&Target mbox capability for A/B and multivariate testing within your mobile app, and audience measurement capabilities through Adobe AudienceManager.
                   DESC

  s.homepage     = "https://github.com/Adobe-Marketing-Cloud/mobile-services/releases"

  s.license      = {:type => "Commercial", :text => "Adobe Systems Incorporated All Rights Reserved"}
  s.author       = "Adobe Mobile SDK Team"
  s.source       = { :git => 'https://github.com/Adobe-Marketing-Cloud/mobile-services.git', :tag => "v#{s.version}-cocoapod" }

  s.source_files  = "AdobeMobileLibrary/*.h", 'Empty.m'
  s.prepare_command = "touch Empty.m && echo '#import \"ADBMobile.h\"\n@implementation ADBMobile (ForceLoad) @end' > Empty.m"
  s.frameworks = "UIKit", "SystemConfiguration"
  s.libraries = "sqlite3.0"
  s.vendored_libraries = "AdobeMobileLibrary/libAdobeMobile.a"
end
