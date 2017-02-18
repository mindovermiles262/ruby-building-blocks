=begin
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It 
should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

    > stock_picker([17,3,6,9,15,8,6,1,10])
    => [1,4]  # for a profit of $15 - $3 == $12
=end

def stock_picker(historic)
    buy_index = 0
    max = [0]
    historic.each do |buy|
        sell_index = buy_index;
        historic[buy_index..-1].map do |sell|
            net = sell - buy
            if (net > max[0])
                max[0] = net
                max[1] = buy_index
                max[2] = sell_index
            end
            sell_index += 1
        end
    buy_index += 1
    end
puts "For the maximum profit of $#{max[0]}, you should have bought"
puts "on day #{max[1]} and sold on day #{max[2]}"
end

stock_picker([17,3,6,9,15,8,6,1,10])