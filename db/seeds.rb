# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Billy Bob", email: "Billy@bob.com")

Article.create(user_id: 1, title: 'Monkey is still alive', image: 'http://i.imgur.com/3BwdBAS.jpg', 
        content:'fdjkalf;jdklf;jdklafjdkl;jfkld;ajfkl;dajfkldajfklda;fjkdlaghdkl;gjfdklfjdakfljdkfldjfkljdfkldjflajfdklf;jdklfjkdalfjdklfjkdlaghdjlfjkdlajfkdljfklajeioapjfiejaflkej')
        
Article.create(user_id: 1, title: 'He never knows what comes in', image: 'http://i.imgur.com/Fcy0dKS.jpg', 
        content:'fdjkalf;jdklf;jdklafjdkl;jfkld;ajfkl;dajfkldajfklda;fjkdlaghdkl;gjfdklfjdakfljdkfldjfkljdfkldjflajfdklf;jdklfjkdalfjdklfjkdlaghdjlfjkdlajfkdljfklajeioapjfiejaflkej')
        
Article.create(user_id: 1, title: 'Frogs?', image: 'http://i.imgur.com/s72MM2Q.jpg', 
        content:'fdjkalf;jdklf;jdklafjdkl;jfkld;ajfkl;dajfkldajfklda;fjkdlaghdkl;gjfdklfjdakfljdkfldjfkljdfkldjflajfdklf;jdklfjkdalfjdklfjkdlaghdjlfjkdlajfkdljfklajeioapjfiejaflkej')
        
Article.create(user_id: 1, title: 'I just can\'t', image: 'http://i.imgur.com/WCGcG8v.jpg', 
        content:'fdjkalf;jdklf;jdklafjdkl;jfkld;ajfkl;dajfkldajfklda;fjkdlaghdkl;gjfdklfjdakfljdkfldjfkljdfkldjflajfdklf;jdklfjkdalfjdklfjkdlaghdjlfjkdlajfkdljfklajeioapjfiejaflkej')
        
Article.create(user_id: 1, title: 'It was phone', image: 'http://i.imgur.com/txOKK7A.jpg', 
        content:'fdjkalf;jdklf;jdklafjdkl;jfkld;ajfkl;dajfkldajfklda;fjkdlaghdkl;gjfdklfjdakfljdkfldjfkljdfkldjflajfdklf;jdklfjkdalfjdklfjkdlaghdjlfjkdlajfkdljfklajeioapjfiejaflkej')
        
Article.create(user_id: 1, title: 'Don\'t wake daddy', image: 'http://i.imgur.com/Y6RRkEN.jpg', 
        content:'fdjkalf;jdklf;jdklafjdkl;jfkld;ajfkl;dajfkldajfklda;fjkdlaghdkl;gjfdklfjdakfljdkfldjfkljdfkldjflajfdklf;jdklfjkdalfjdklfjkdlaghdjlfjkdlajfkdljfklajeioapjfiejaflkej')
        