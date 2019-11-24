class Tariff < ApplicationRecord
    scope :cities, -> { where(active: true).map { |tariff| tariff.city } }
end
