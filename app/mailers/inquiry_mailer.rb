class InquiryMailer < ApplicationMailer
  default from: "example@example.com"

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:to => ENV['SEND_MAIL'], :subject => 'お問い合わせを承りました')
  end
end
