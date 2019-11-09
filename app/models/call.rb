class Call < ApplicationRecord
  after_create :send_invoice

  has_one :invoice

  private

  def send_invoice
    Invoices::CreateService.call(self)
  end
end
