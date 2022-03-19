module ListingsHelper
    def format_condition(condition)
        #capitalizes every word in string
            condition.split("_").map {|word| word.capitalize}.join(" ")
        
    end 
    
    def format_price(price)
        "$#{price/ 100.00}"
    end    
end
