class ContactMailer < ApplicationMailer
  default from: "contact@jardica.net"

  def contact_email
    @sender_email = params[:sender_email]
    @sender_first_name = params[:sender_email]
    @sender_last_name = params[:sender_email]
    @sender_phone = params[:sender_phone]
    @sender_place_of_intervention = params[:sender_place_of_intervention]
    @sender_demand = params[:sender_demand]
    @sender_message = params[:sender_message]

    @receiver_email = params[:receiver_email]

    mail(to: @receiver_email, subject: @sender_demand)
  end

end
