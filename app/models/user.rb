class User < ApplicationRecord
  has_one :adress
  has_many :invoices

  delegate :city,
           :street,
           :house,
           :flat, 
           to: :adress
  
  scope :pending_payment, -> { Call.where('time <= :late_time', late_time: 20.days.ago).map { |call| User.find_by(phone_number: call.phone_number) } }

  def full_name
    [name, surname, patronymic].join(' ')
  end

  def live_adress
    "#{city}, ул. #{street}, #{house}-#{flat}"
  end
end
