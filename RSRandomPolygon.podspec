Pod::Spec.new do |s|

  s.name          = "RSRandomPolygon"
  s.version       = "0.1"
  s.summary       = ""

  s.description   = <<-DESC
                    DESC

  s.homepage      = "https://github.com/rusty1s/RSRandomPolygon"

  s.license       = { :type => "MIT", :file => "LICENSE" }

  s.author        = { "Rusty1s" => "matthias.fey@tu-dortmund.de" }

  s.platform      = :ios, "8.0"

  s.source        = { :git => "https://github.com/rusty1s/RSRandomPolygon.git" }
  s.source_files  = "RSRandomPolygon/RSRandomPolygon/*.swift"

end
