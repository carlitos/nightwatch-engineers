# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Creacion de la compañia
# Company.create(name: 'Recorrido.cl' )

# Day.create(day_of_week: '2020-03-02', week_id: 1 )
# Day.create(day_of_week: '2020-03-03', week_id: 1 )
# Day.create(day_of_week: '2020-03-04', week_id: 1 )
# Day.create(day_of_week: '2020-03-05', week_id: 1 )
# Day.create(day_of_week: '2020-03-06', week_id: 1 )
# Day.create(day_of_week: '2020-03-07', week_id: 1 )
# Day.create(day_of_week: '2020-03-08', week_id: 1 )
#
# puts "Seeding done."

Company.create(name: 'Recorrido')

User.create(name: 'Barbara', username: 'barbara', password: 'Inicial123', password_confirmation: 'Inicial123', color: '#4a437e', company_id: 1 )
User.create(name: 'Benjamin', username: 'benja', password: 'Inicial123', password_confirmation: 'Inicial123', color: '#298ff5',  company_id: 1 )
User.create(name: 'Ernesto', username: 'ernesto', password: 'Inicial123', password_confirmation: 'Inicial123', color: '#f14e23', company_id: 1 )


Week.create(name: 'Semana', year: '2020', number_of_week: '10' )
Week.create(name: 'Semana', year: '2020', number_of_week: '11' )
Week.create(name: 'Semana', year: '2020', number_of_week: '12' )


Day.create(day_of_week: '2020-03-02', week_id:1, created_at: '2022-02-07 23:38:12.005331', updated_at: '2022-02-07 23:38:12.005331')
Day.create(day_of_week: '2020-03-03', week_id:1, created_at: '2022-02-07 23:38:12.005331', updated_at: '2022-02-07 23:38:12.005331')
Day.create(day_of_week: '2020-03-04', week_id:1, created_at: '2022-02-07 23:38:12.005331', updated_at: '2022-02-07 23:38:12.005331')
Day.create(day_of_week: '2020-03-05', week_id:1, created_at: '2022-02-07 23:38:12.005331', updated_at: '2022-02-07 23:38:12.005331')
Day.create(day_of_week: '2020-03-06', week_id:1, created_at: '2022-02-07 23:38:12.005331', updated_at: '2022-02-07 23:38:12.005331')
Day.create(day_of_week: '2020-03-07', week_id:1, created_at: '2022-02-07 23:38:12.005331', updated_at: '2022-02-07 23:38:12.005331')
Day.create(day_of_week: '2020-03-08', week_id:1, created_at: '2022-02-07 23:38:12.005331', updated_at: '2022-02-07 23:38:12.005331')
