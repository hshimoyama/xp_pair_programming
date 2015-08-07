class SingleCashier
  def self.calcurate(price:, number:, region: )
    tax_rate = 1.08
    price.to_i * number.to_i * tax_rate
  end
end
