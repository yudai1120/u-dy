class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@example.com'
  layout 'mailer'
  
  def welcome_mail(user)
    @user = user
    mail(to: @user.email, subject: "ご登録ありがとうございます。")
    
    respond_to do |format|
      if @user.save
        UserMailer.welcome_mail(@user).deliver_now
        format.html { redirect_to @user, notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.erros, status: :unprocessable_entity }
      end
    end
  end
end
