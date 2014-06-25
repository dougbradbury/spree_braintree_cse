require 'spec_helper'

describe Spree::CreditCard do 
  it '#number acts as a setter' do 
    credit_card = Spree::CreditCard.new
    old_number = credit_card.number
    new_number = 123
    credit_card.number = new_number
    expect(credit_card.number).to eq(new_number)
  end
end
