def consolidate_cart(cart)
  cart.each_with_object({}) do |item, output|
    item.each do |type, attribute|
      if output[type]
        attribute[:count] += 1
      else
        attribute[:count] = 1
      end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
