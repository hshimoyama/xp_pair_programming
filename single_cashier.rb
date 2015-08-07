class SingleCashier
  def self.calcurate(price:, number:, region: )
    price.to_i * number.to_i
  end
end
