class MultipleCashier
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
