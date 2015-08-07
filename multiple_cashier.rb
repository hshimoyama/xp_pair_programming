class MultipleCashier

  DISCOUNT_RATES = {
    1000 => 0.97,
    5000 => 0.95,
    7000 => 0.93,
    10000 => 0.9,
    50000 => 0.85,
  }

  def self.calcurate(inputs)
    total_price = inputs.inject(0) do |r,input|
      r + SingleCashier.calcurate(
        price: input[:price],
        number: input[:number],
        region: input[:region]
      )
    end

    discount_rate  = 1.0
    DISCOUNT_RATES.each do |price,rate|
      discount_rate  = rate if total_price >= price
    end
    total_price * discount_rate
  end
end
