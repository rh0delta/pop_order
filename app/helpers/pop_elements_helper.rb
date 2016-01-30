module PopElementsHelper
  def in_stock?(product)
    if product.availability == true
      avail = 'In Stock'
    else
      avail = 'Out of Stock'
    end
  end
end
