def consolidate_cart(cart)
  cart.each_with_object({}) do |item, output|
    item.each do |type, attribute|
      if output[type]
        attribute[:count] += 1
      else
        attribute[:count] = 1
        output[type] = attribute
      end
    end
  end
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    name = coupon[:item]
    if cart[name] && cart[name][:count] >= coupon[:num]
      if cart["#{name} W/ COUPON"]
        {:count => 1, :price => coupon[:cost]}
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
