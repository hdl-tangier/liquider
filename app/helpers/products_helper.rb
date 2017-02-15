module ProductsHelper
  def products_list(products)
    products.inject([]) do |arr, product|
      arr << { "id" => product.id, "title" => product.title, "price" => product.price.to_s }
    end
  end

  def product_details(product)
    { "id" => product.id, "title" => product.title, "description" => product.description, "price" => product.price.to_s }
  end
end
