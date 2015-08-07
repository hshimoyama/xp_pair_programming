require './single_cashier'
require './multiple_cashier'

inputs = []
ARGV.each_with_index do |arg|
  price, number, region = arg.split(',')
  inputs << {
    price: price,
    number: number,
    region: region,
  }
end

p inputs

MultipleCashier.calcurate(inputs)

#p SingleCashier.calcurate(price: inputs[0][:price], number: inputs[0][:number], region: inputs[0][:region])
