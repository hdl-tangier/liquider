# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Page.delete_all

Page.create!(id: 1, action: "products.index", template: %{
  <h2>Your shopping list.</h2>
  <ul class= "items">
    {% for item in list %}
      <li>{{ item.title }} <strong>{{ item.price }}€</strong> (<a href="/products/{{item.id}}">see details</a>)</li>
    {% endfor %}
  </ul>
}
)

Page.create!(id: 2, action: "products.show", template: %{
  <h2>Item details.</h2>
  <div class="item">
    <p><strong>title: </strong> {{ item.title }}</p>
    <p><strong>description: </strong> {{ item.description }}</p>
    <p><strong>price: </strong> {{ item.price }}</p>
  </div>
  <a href="/products">Home</a>
}
)


Product.delete_all

Product.create!(title: "Cheese", description: "A nice fruit comming from cows", price: 2.6)
Product.create!(title: "Rice", description: "Very eaten in China", price: 1.2)
Product.create!(title: "Aceite de Oliva 3l", description: "Andalucia tierra mia", price: 9.0)
Product.create!(title: "Tajin", description: "Moroccan meal of vegitables and fish", price: 6.5)
Product.create!(title: "Kebap", description: "Best kebap in Denizli", price: 5.0)