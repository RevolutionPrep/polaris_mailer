module PolarisMailer
  class Interceptor
    class << self; attr_accessor :config end
    @config

    def self.delivering_email(message)
      message.to = self.config[:to]
    end
  end
end
