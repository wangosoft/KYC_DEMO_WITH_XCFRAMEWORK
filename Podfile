# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'


target 'KYC_DEMO_WITH_XCFRAMEWORK' do

  # Pods for KYC_DEMO_WITH_XCFRAMEWORK
  pod 'KYC_SDK', '~> 0.7'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
    end
  end
end
