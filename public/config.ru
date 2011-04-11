app = Rack::Builder.new {
  use Rails::Rack::LogTailer unless options[:detach]
  use Rails::Rack::Debugger if options[:debugger]
  use ActionDispatch::Static
  run ActionController::Dispatcher.new
}.to_app
