platform :ios, '8.0'

target 'Bench' do
end

target 'BenchTests', exclusive: true do
  pod 'Specta', '~> 0.5.0'
  pod 'Expecta', '~> 0.4.0'
end

target 'BenchKIF', exclusive: true do
  pod 'KIF', '~> 3.2.0'
  pod 'Specta', '~> 0.5.0'
end

target 'BenchKIFSwift', exclusive: true do
  use_frameworks!
  pod 'KIF', '~> 3.2.0'
  pod 'Quick', '~> 0.3.1'
end
