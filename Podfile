use_frameworks!
platform :ios, '11.3'

target 'MediScan' do
  use_frameworks!
  pod 'TesseractOCRiOS'
end
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
        end
        
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
        end
    end
end
