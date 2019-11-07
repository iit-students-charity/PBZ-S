class User < ApplicationRecord
    has_one :adress
    has_many :invoices
end
