class Welcome < MailForm::Base
    attribute :name,      :validate => true
    attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    attribute :message
    attribute :nickname,  :captcha  => true
  
    # Declare the e-mail headers. It accepts anything the mail method
    # in ActionMailer accepts.
    def headers
      {
        :subject => "Diêlo - forumlário contato do site",
        :to => "sac@dielo.com.br,irm@ionar.com.br",
        :reply_to => %("#{name}" <#{email}>),
        :from => %("#{name}" <#{email}>)
      }
    end
  end
  