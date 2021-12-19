# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Save data for Category

Category.create([
    { name: 'Food'},
    { name: 'Meat'},
    { name: 'Beer'},
    { name: 'Clothes'}
])
puts "Categories loaded"

Status.create([
    {description: 'Accepted'},
    {description: 'Rejected'},
    {description: 'Canceled'},
    {description: 'Delivered'},
    {description: 'Authorized'}
])
puts "Statutes loaded"

Role.create([
    { name: 'Admin'},
    { name: 'Client'}
])
puts "Roles loaded"

User.create([
    {username: 'admin', password: 'admin', password_confirmation: 'admin', role: Role.find_by(name: 'Admin')}
])
puts "Users loaded"

Product.create([
    {name: 'Empanadas', price: '1500', description: 'Ricas empanadas de pino', category_id: '1'},
    {name: 'Lomo Vetado', price: '8500', description: 'Trozo Kilo', category_id: '2'},
    {name: 'Kutsmann bock', price: '3000', description: 'Botella 330 cc', category_id: '3'},
    {name: 'Zapatillas', price: '30000', description: 'Runnig', category_id: '4'},
    {name: 'Sopaipillas', price: '200', description: 'Frituras para la salud', category_id: '1'},
    {name: 'Palanca', price: '9000', description: 'Trozo Kilo', category_id: '2'},
    {name: 'Corona', price: '2000', description: 'Fomes , muy suaves', category_id: '3'},
    {name: 'Zapatos', price: '45000', description: 'Cuero', category_id: '4'},
    {name: 'Pizza', price: '7000', description: 'Napolitana mediana', category_id: '1'},
    {name: 'Pechuga de pollo', price: '3000', description: 'El kilo', category_id: '2'},
    {name: 'Volcanes doopel bock', price: '1500', description: 'Botella 330 cc', category_id: '3'},
    {name: 'Botas', price: '40000', description: 'Botas para el agua', category_id: '4'},
    {name: 'Comida China', price: '15000', description: 'Menu 2 personas', category_id: '1'},
    {name: 'Truto entero', price: '2600', description: 'El Kilo', category_id: '2'},
    {name: 'Volcanes sin filtrar', price: '3000', description: 'Botella 330 cc', category_id: '3'},
    {name: 'Camisa', price: '15000', description: 'Azul, manga larga', category_id: '4'},
    {name: 'Papas Fritas', price: '3000', description: 'Porcion mediana', category_id: '1'},
    {name: 'Costillar de Cerdo', price: '6000', description: 'EL kilo de costillar', category_id: '2'},
    {name: 'Volcanes stronge lager', price: '3000', description: 'Botella 330 cc', category_id: '3'},
    {name: 'Pantalones', price: '20000', description: 'Jeans negros', category_id: '4'},
    {name: 'Barros Luco' , price: '2500', description: 'Rico Sandwich carne/queso', category_id: '1'},
    {name: 'Pulpa de cerd0', price: '5500', description: 'Trozo 1 kilo', category_id: '2'},
    {name: 'Volcanes doble malta', price: '3000', description: 'Botella 330 cc', category_id: '3'},
    {name: 'Chaqueta mezclilla', price: '55000', description: 'Chaqueta azul', category_id: '4'}
])
puts "Product loaded"