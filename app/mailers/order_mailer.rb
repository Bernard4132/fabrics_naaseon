class OrderMailer < ApplicationMailer
  default from: "NaaseonFabrics@naaseonfabrics.com"

  def order_fulfillment_alert(order)
  	@order = order
  	mail to: order.email , subject: "[Naason Fabrics] Your Order has been fulfilled."
  end
end
