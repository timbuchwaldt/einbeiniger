class StateMailer < ActionMailer::Base
  default from: "postmaster@einbeiniger.wrint.de"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.state_mailer.accepted.subject
  #
  def accepted(proposal)
    @proposal = proposal

    mail to: proposal.user.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.state_mailer.rejected.subject
  #
  def rejected(proposal)
    @proposal = proposal

    mail to: proposal.user.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.state_mailer.backup.subject
  #
  def backup(proposal)
    @proposal = proposal

    mail to: proposal.user.email
  end
end
