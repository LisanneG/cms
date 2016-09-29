# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bbt = Location.new
bbt.title = "Brandenburger Tor"
bbt.text =  "De Brandenburger Tor is de enige bewaard gebleven stadspoort van Berlijn.
Vroeger was de plek waar de poort staat de stadsgrens van het centrum. Wie door de poort wilde, moest tol betalen.
De eerste poort stamt uit 1734.

In 1788 werd door architect Carl Gotthard Langhans op dezelfde plek een nieuwe poort gebouwd in opdracht van de Pruisische koning Frederik Willem II,
ter herinnering aan de bezetting van de Republiek der Zeven Verenigde Nederlanden in 1787 door een Pruisisch leger van 20.000 man.
De gebeeldhouwde ornamenten waren voltooid in 1795. De robuuste Dorische zuilen en het entablement van de poort worden omringd door paviljoens,
die ooit werden gebruikt door wachters en douanebeambten. De bas-reliëfs lijken op taferelen uit de Griekse mythologie.
Volgens kunsthistorica Zitha Pöthe is het een symbolische verbeelding van de gevoerde strijd door het Pruisische leger.
Rechts zou Frederik Willem II staan die koning Lodewijk XVI neerslaat. Verder naar links Wilhelmina van Pruisen,
zijn zuster, de vrouw van stadhouder Willem V, wier aanhouding bij Goejanverwellesluis de directe aanleiding was voor de bezetting"

bbt.x = "13.377704"
bbt.y = "52.516275"
bbt.question_id = 1
bbt.save!


qbbt = Question.new
qbbt.id = 1
qbbt.question = "In welk jaar is de Brandenburger Tor gebouwd?"
qbbt.question_type = "multiple_choice"
qbbt.save!

user = Admin.new
user.email = "test@mail.com"
user.password = "standardpassword"
user.password_confirmation = "standardpassword"
user.save!

