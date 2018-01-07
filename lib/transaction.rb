require 'time'
require_relative 'transaction_repo'

class Transaction
  attr_reader :id,
              :invoice_id,
              :credit_card_number,
              :credit_card_expiration_date,
              :result,
              :created_at,
              :updated_at

  def initialize(data, parent)
    @id = data[:id].to_i
    @invoice_id = data[:invoice_id].to_i
    @credit_card_number = data[:credit_card_number].to_i
    @credit_card_expiration_date = data[:credit_card_expiration_date].to_i
    @result = data[:result].to_sym
    @created_at = data[:created_at]
    @updated_at = data[:updatd_at]
  end

end
