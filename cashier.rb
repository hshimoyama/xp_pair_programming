require './single_cashier'
p price = ARGV[0]
p number = ARGV[1]
p region = ARGV[2]
SingleCashier.calcurate(price: price, number: number, region: region)
