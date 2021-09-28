# Rails Client-side Javascript Error Handler 

<a href="https://badge.fury.io/rb/rails_client_side_javascript_error_handler" target="_blank"><img height="21" style='border:0px;height:21px;' border='0' src="https://badge.fury.io/rb/rails_client_side_javascript_error_handler.svg" alt="Gem Version"></a>
<a href='https://github.com/westonganger/rails_client_side_javascript_error_handler/actions' target='_blank'><img src="https://github.com/westonganger/rails_client_side_javascript_error_handler/workflows/Tests/badge.svg" style="max-width:100%;" height='21' style='border:0px;height:21px;' border='0' alt="CI Status"></a>
<a href='https://rubygems.org/gems/rails_client_side_javascript_error_handler' target='_blank'><img height='21' style='border:0px;height:21px;' src='https://ruby-gem-downloads-badge.herokuapp.com/rails_client_side_javascript_error_handler?label=rubygems&type=total&total_label=downloads&color=brightgreen' border='0' alt='RubyGems Downloads' /></a>

Easily handle error notifications for client-side Javascript errors and exceptions within your Rails apps.

Key Features:

- Get notified when client-side javascript errors occur
- Integrates directly with [exception_notification](https://github.com/smartinez87/exception_notification) gem

# Install

```ruby
gem 'rails_client_side_javascript_error_handler'
```

Setup Routes

```ruby
# config/routes

get "/path/to/handle_javascript_error", to: "rails_clientside_javascript_error_handler#handle_error"
```

Add Javascript

```ruby
# app/assets/javascripts/application.js

//= require rails_clientside_javascript_error_handler
```

(Optional) Configure as required. Defaults are as shown below.

```ruby
RailsClientsideJavascriptErrorHandler.config do |config|
  config.request_method = "/handle_javascript_error"
  config.request_path = "POST"
  config.unhandledrejection_name = "Unhandled Promise Rejection (unhandledrejection)"
end
```

# Credits

Created & Maintained by [Weston Ganger](https://westonganger.com) - [@westonganger](https://github.com/westonganger)
