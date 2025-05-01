require "minitest/autorun"
ENV["RAILS_ENV"] ||= "test"
require_relative "dummy/config/environment"
require "rails/test_help"
require "active_record/fixtures"
require "view_model"

class ActiveSupport::TestCase
  self.fixture_paths = [File.expand_path("fixtures", __dir__)]
  fixtures :all
end
