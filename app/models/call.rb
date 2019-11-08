class Call < ApplicationRecord
  after_create :send_invoice

  has_one :invoice

  private

  def send_invoice
    Invoice.create(invoice_attributes)
  end

  def invoice_attributes
    {
      user_id: user_id,
      call_id: id,
      price: calculate_price
    }
  end

  def user_id
    @user_id ||= User.find_by(phone_number: phone_number).id
  end

  def calculate_price
    duration * tax
  end

  def tax
    (time.hour >= 20 || time.hour <= 6) ? tariff.special_price : tariff.price
  end

  def tariff
    @tariff ||= Tariff.find_by(city: city)
  end
end
