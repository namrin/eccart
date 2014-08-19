class ContactMailer < ActionMailer::Base
  default :to => "eccartgrocery@gmail.com"
  
  def contact_email(message)
    @message = message
    #attachments["cart2.jpg"] = File.read("#{Rails.root}/app/assets/images/cart2.jpg")
    mail( :from => "#{message.email}", :subject => "Comment", :date => Time.now )
   
  end
end
 
 
