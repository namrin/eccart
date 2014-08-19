class HomeController < ApplicationController
  def index
    if user_signed_in?
    	redirect_to dashboard_index_path
    end
  end

  def contact
  end
 
  def new_mail
    @message=Message.new
  end

  def send_mail
    @message = Message.new(params[:message])
    
    puts "-------------------"
    if @message.valid?
    ContactMailer.contact_email(@message).deliver
    redirect_to contact_us_path, :notice => "Message was successfully sent."
    else
    flash.now.alert = "Please fill all fields with valid details"
    render :contact
    end
  end

  def terms
  end
end

