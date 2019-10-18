class UserMailer < ApplicationMailer
  after_create :send_email

  private
    def send_email
    end
end
