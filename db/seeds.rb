# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Categorie.destroy_all
Statut.destroy_all
Product.destroy_all
Cat1 = Categorie.create(name: 'Produits utiles')
puts 'Categorie created'
Statut1 = Statut.create(name: 'Validée')
puts 'Statuts created'
Product1 = Product.create(
  stock: 100,
  description: 'Un produit très utile',
  name: 'Produit 1',
  sku: 1,
  categorie_id: Cat1.id)
puts 'Produits created'
Product2 = Product.create(
  stock: 100,
  description: 'Un produit très utile',
  name: 'Produit 1',
  sku: 1,
  categorie_id: Cat1.id)
puts 'Produits created'
Product3 = Product.create(
  stock: 100,
  description: 'Un produit très utile',
  name: 'Produit 1',
  sku: 1,
  categorie_id: Cat1.id)
puts 'Produits created'
