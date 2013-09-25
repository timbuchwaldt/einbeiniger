class StateMailer < ActionMailer::Base
  default from: "postmaster@einbeiniger.wrint.de"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.state_mailer.accepted.subject
  #
  def accepted
    @greeting = "Hi"

    mail to: "tim@buchwaldt.ws"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.state_mailer.rejected.subject
  #
  def rejected
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.state_mailer.backup.subject
  #
  def backup
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
