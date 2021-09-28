require 'rails_clientside_javascript_error_handler/version'

module RailsClientsideJavscriptErrorHandler

  mattr_accessor :request_method, default: "/handle_javascript_error"
  mattr_accessor :request_path, default: "POST"
  mattr_accessor :unhandledrejection_name, default: "Unhandled Promise Rejection (unhandledrejection)"

  def config(&block)
    block.call(self)
  end

end
