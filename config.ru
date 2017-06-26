require_relative 'lib/codebreaker_rack_app/controller'
require 'sass/plugin/rack'

use Rack::Reloader
use Rack::Static, urls: ['/css', '/js', '/icons'], root: 'static'
run CodebreakerRackApp::Controller.new