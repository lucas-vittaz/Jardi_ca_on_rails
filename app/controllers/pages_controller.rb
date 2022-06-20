class PagesController < ApplicationController
  def home
  end

  def contact
    @sender_email = params[:sender_email]
    @sender_first_name = params[:sender_email]
    @sender_last_name = params[:sender_email]
    @sender_phone = params[:sender_phone]
    @sender_place_of_intervention = params[:sender_place_of_intervention]
    @sender_demand = params[:sender_demand]
    @sender_message = params[:sender_message]

    @receiver_email = "contact@jardica.net"

    if ContactMailer.with(sender_email: @sender_email, sender_first_name: @sender_first_name, sender_last_name: @sender_last_name, sender_phone: @sender_phone, sender_place_of_intervention: @sender_place_of_intervention, sender_demand: @sender_demand, sender_message: @sender_message).contact_email.deliver_now
      flash[:success] = "Message sent!"
      redirect_to root_path
    else
      flash[:danger] = "Message not sent!"
      redirect_to root_path
    end
  end
end
