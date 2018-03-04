gdax_string=""

fee_total = 0
fee = false
fee_amount_line = 0
gdax_string.each_line do |line|
  if fee
    if fee_amount_line == 1
      fee_total += line.split(' ')[0].to_f
      fee = false
    else
      fee_amount_line += 1
    end
  end
  if line == "Fee\n"
    fee = true
    fee_amount_line = 0
  end
end
puts "Total Fees: #{fee_total}"