require 'pry'

def consolidate_cart(cart)
  consolidated = {}
  cart.each do |thing|
    thing.each do |item, detail|
      if consolidated[item] == nil
        consolidated[item] = detail
        consolidated[item].merge!(:count => 1)
      else  
         consolidated[item][:count] += 1
          
      end
    end 
  end 
  consolidated
end

def apply_coupons(cart, coupons)
  applied = {}
  cart.each do |item, detail|
    if applied[item] == nil
      applied[item] = detail
    elsif item == "AVOCADO"
      applied[item][:count] = 1
    end 
    binding.pry
  end  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
