# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

project_1 = Project.create(title: 'Семья')
project_2 = Project.create(title: 'Работа')
project_3 = Project.create(title: 'Прочее')

project_1.todos.create( text: 'Купить молоко', isCompleted: false )
project_1.todos.create( text: 'Заменить масло в двигателе до 23 апреля', isCompleted: false )
project_1.todos.create( text: 'Отправить письмо бабушке', isCompleted: true )
project_1.todos.create( text: 'Заплатить за квартиру', isCompleted: false )
project_1.todos.create( text: 'Забрать обувь из ремонта', isCompleted: false )

project_2.todos.create( text: 'Позвонить заказчику', isCompleted: true )
project_2.todos.create( text: 'Отправить документы', isCompleted: true )
project_2.todos.create( text: 'Заполнить отчет', isCompleted: false )

project_3.todos.create( text: 'Позвонить другу', isCompleted: false )
project_3.todos.create( text: 'Подготовиться к поездке', isCompleted: false )