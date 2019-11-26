# frozen_string_literal: true

class PayController < ApplicationController
  def pay
    amount = params.fetch('amount').to_f
    invoice = Invoice.find(params.fetch('id'))
    invoice.update(price: invoice.price - amount)
    invoice.call.update(payment_state: true) if invoice.price <= 0
    redirect_back fallback_location: '/'
  end
end
    