# frozen_string_literal: true

module Invoices
  class CreateService
    def self.call(passed_call)
      new(passed_call).call            
    end

    attr_accessor :new_call

    def initialize(passed_call)
      @new_call = passed_call
    end

    def call
      Invoice.create(invoice_attributes)
    end

    def invoice_attributes
      {
          user_id: user_id,
          call_id: new_call.id,
          price: calculate_price
      }
    end

    def user_id
      @user_id ||= User.find_by(phone_number: new_call.phone_number).id
    end

    def calculate_price
      new_call.duration * tax
    end

    def tax
      (new_call.time.hour >= 20 || new_call.time.hour <= 6) ? tariff.special_price : tariff.price
    end

    def tariff
      @tariff ||= Tariff.find_by(city: new_call.city)
    end
  end
end