class Chat
  class << self
    def configure
      yield config
    end

    def config
      @config ||= Config.new
    end
  end

  def client
    Twilio::REST::Client.new(
      config.twilio_api_key,
      config.twilio_api_secret,
      config.twilio_account_sid
    )
  end

  private

  def config
    self.class.config
  end

  class Config
    attr_accessor *%i[
      twilio_account_sid
      twilio_notification_service_sid
      twilio_api_key
      twilio_api_secret
      twilio_caht_service_sid
    ].freeze
  end
end
