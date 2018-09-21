Chat.configure do |config|
  config.twilio_account_sid              = Settings::App.twilio_account_sid
  config.twilio_notification_service_sid = Settings::App.twilio_notification_service_sid
  config.twilio_api_key                  = Settings::App.twilio_api_key
  config.twilio_api_secret               = Settings::App.twilio_api_secret
  config.twilio_caht_service_sid         = Settings::App.twilio_caht_service_sid
end
