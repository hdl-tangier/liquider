module ProductsHelper
  def products_list(products)
    list = products.inject([]) do |arr, product|
      arr << { "id" => product.id, "title" => product.title, "price" => product.price.to_s }
    end

    { "list" => list }
  end

  def product_details(product)
    { "item" => { "id" => product.id, "title" => product.title, "description" => product.description, "price" => product.price.to_s } }
  end
end
