class UserMailer < ApplicationMailer
  #デフォルトのaccount_activationにコメント付与
  #def account_activation
  #  @greeting = "Hi"
  #  mail to: "to@example.org" # => mail object
  #   # ==> app/views/user_mailer/account_activation.text.erb
  #   # ==> app/views/user_mailer/account_activation.html.erb
  #end
  
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
