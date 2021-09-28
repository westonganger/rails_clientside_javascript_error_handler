require "test_helper"

class RailsClientsideJavascriptErrorHandlerTest < ActiveSupport::TestCase

  def test_exposes_main_module
    assert RailsClientsideJavascriptErrorHandler.is_a?(Module)
  end

  def test_exposes_version
    assert RailsClientsideJavascriptErrorHandler::VERSION
  end

  def test_config
    assert_nothing_raised do
      RailsClientsideJavascriptErrorHandler.config do |config|
        config.request_method = "/handle_javascript_error"
        config.request_path = "POST"
        config.unhandledrejection_name = "Unhandled Promise Rejection (unhandledrejection)"
      end
    end
  end

end
