class RailsClientsideExceptionHandlerController < ActionController::Base

  def handle_error
    begin
      ExceptionNotifier.notify_exception(
        Errors::ClientSideJavascript.new(params.require(:name)),
        env: nil,
        data: {
          message: params.require(:message),
          url: params.require(:url),
          user_agent: params.require(:user_agent),
          remote_ip: request.remote_ip,
          stacktrace: params[:stacktrace].presence || "N/A",
        }
      )

      head 200
    rescue ActionController::ParameterMissing
      head 500
    end
  end

end
