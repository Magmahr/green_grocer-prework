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
  applicable = {}
  coupons.each do |coupon|
    item = coupon[:item]
    if applicable[item].nil?
      applicable[item] = 1
    else 
      applicable[item] += 1
    end 

      if cart.keys.include?(item)
        if cart[item][:count] >= coupon[:num]
         cart[item][:count] -= coupon[:num]
           cart["#{item} W/COUPON"] = {:price => coupon[:cost],   :clearance => cart[item][:clearance], :count => applicable[item]}
  end    
    end
      end
    cart    
end

def apply_clearance(cart)
  cart.each do |item, detail|
    if item[:clearance] == true
      item[:price] -= item[:price] * 0.2
    end 
  end  
  cart  
end

def checkout(cart, coupons)
  # code here
end
