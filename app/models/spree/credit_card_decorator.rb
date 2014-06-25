Spree::CreditCard.class_eval do
  def number=(number)
    @number = number
  end
end
