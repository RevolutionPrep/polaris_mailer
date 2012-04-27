module PolarisMailer
  class Interceptor
    class << self; attr_accessor :config end
    @config

    def self.delivering_email(message)
      message.to  = self.config[:to]
      message.bcc = self.config[:bcc] if message.bcc.present?
      message.cc  = self.config[:cc]  if message.cc.present?
    end
  end
end
