class SingleCashier

  AREA_TAXES = {
    "北海道" => 1.0685,
    "東日本" => 1.08,
    "西日本" => 1.0625,
    "四国"   => 1.04,
    "九州"   => 1.0825,
  }

  def self.calcurate(price:, number:, region: )
    p AREA_TAXES[region]
    tax_rate = 1.08
    price.to_i * number.to_i * tax_rate
  end
end
