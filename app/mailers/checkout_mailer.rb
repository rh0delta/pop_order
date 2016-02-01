class CheckoutMailer < ApplicationMailer

  def checkout_email(user, order_id)
    @user = user
    @url = root_url
    @items = Cart.find_by_order_id(order_id).items
    mail(to: @user.email, subject: 'test chckout email')
  end
end
