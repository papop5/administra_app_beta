# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/created
  def created
    UserMailer.created
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/updated
  def updated
    UserMailer.updated
  end

end
