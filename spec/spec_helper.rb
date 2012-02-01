require 'bundler/setup'
Bundler.require(:default, :development)

RSpec.configure do |config|
  config.color = true
end

VCR.config do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.stub_with :webmock
end
