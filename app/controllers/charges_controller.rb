class ChargesController < ApplicationController
  def new
  end

  def create

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => params[:stripeAmount],
      :description => 'Hexis.nu Stripe customer',
      :currency    => 'sek'
    )
    current_user.has_paid = true
    current_user.save
    redirect_to "/", notice: "Välkommen till Hexis!"

  rescue Stripe::CardError => e
    flash[:error] = e.message
  end
end
