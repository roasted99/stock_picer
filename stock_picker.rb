def stock_picker(array)
    
    last_profit = 0
    buy = 0
    sell = 0

    array.each_with_index do |price1, index1|
        for index2 in index1 + 1..array.length - 1 do
            profit = array[index2] - price1
            if profit > last_profit
                last_profit = profit
                buy = index1
                sell = index2
            end
        end
    end
    [buy, sell]
end

p stock_picker([17,3,6,9,15,8,6,1,10])