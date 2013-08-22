class PMailer < Devise::Mailer
  helper :application

  def reset_password_instructions(resource, account)
    @account = account
    devise_mail(resource, :reset_password_instructions)
  end
end