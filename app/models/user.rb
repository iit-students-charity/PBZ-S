class User < ApplicationRecord
  has_many :invoices

  scope :pending_payment, -> { Call.where('time <= :late_time', late_time: 20.days.ago).map { |call| User.find_by(phone_number: call.phone_number) } }

  def full_name
    [name, surname, patronymic].join(' ')
  end
end
