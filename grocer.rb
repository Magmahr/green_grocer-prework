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
    item = coupons[:item]
    if applicable[item].nil?
      applied[item] = 1
    elsif applicable[item] == item
      applied[item] += 1
    end 

  if cart.keys.include?(item) do |item, detail|
    if cart[item][:count] >= coupon[:num]
      cart[item]
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
