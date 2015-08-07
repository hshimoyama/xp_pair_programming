class MultipleCashier

  DISCOUNT_RATES = {
    1000 => 0.97,
    5000 => 0.95,
    7000 => 0.93,
    10000 => 0.9,
    50000 => 0.85,
  }

  def self.calcurate(inputs)
    inputs.inject(0) do |r,input|
      r + SingleCashier.calcurate(
        price: input[:price],
        number: input[:number],
        region: input[:region]
      )
    end
  end
end
