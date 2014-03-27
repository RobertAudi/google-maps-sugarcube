# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.name = 'google-maps-sugarcube'
  app.version = "1.0"
  app.short_version = "1"
  app.identifier = "me.azizlight.GoogleMapsSugarCube"
  app.device_family = [:iphone]
  app.interface_orientations = [:portrait]

  app.pods do
    pod "Google-Maps-iOS-SDK"
  end

  # Google Maps iOS SDK shit
  app.vendor_project('vendor/Pods/Google-Maps-iOS-SDK/GoogleMaps.framework',
    :static, :products => %w{GoogleMaps}, :headers_dir => 'Headers')
  app.resources_dirs << 'vendor/Pods/Google-Maps-iOS-SDK/GoogleMaps.framework/Resources'
  app.frameworks += %w{AVFoundation CoreData CoreLocation CoreText GLKit ImageIO OpenGLES QuartzCore SystemConfiguration}
  app.libs       += %w{/usr/lib/libicucore.dylib /usr/lib/libc++.dylib /usr/lib/libz.dylib}
end
