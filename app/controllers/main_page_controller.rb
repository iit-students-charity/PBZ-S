# frozen_string_literal: true

class MainPageController < ApplicationController
  COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    
  def index
    render :index 
  end

  def calls_per_month
    city = params.fetch('city')
    year, month = params.fetch('month').split('-').map(&:to_i)
    @amount_of_days = days_in_month(month)
    @calls = Call.where(city: city).select { |call| call.time.month == month && call.time.year == year }
    render :calls_per_month
  end

  def bad_users
    @users = User.pending_payment
    render :pending_payment_users
  end

  def tariff_on_date
    @tariffs = Tariff.where('expire_date >= :date AND created_at <= :date', date: params.fetch('date'))
    render :tariffs_on_date
  end

  private

  def days_in_month(month, year = Time.now.year)
    return 29 if month == 2 && Date.gregorian_leap?(year)
    COMMON_YEAR_DAYS_IN_MONTH[month]
  end
end
  