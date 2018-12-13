require 'sinatra'
require './class'

get '/' do
    erb :home
end

get '/about' do
    erb :about
end

get '/contact' do
    erb :contact
end

get '/cakes' do
    @paopu = Cakes.new('Paopu Sponge Cake (Kingdom Hearts)', '$15', 'A sponge cake with starfruit bits inside. Eating this with your loved one grants you everlasting happiness together.', 'paopucake.jpg')
    @heartless = Cakes.new('Heartless Chocolate Cake (Kingdom Hearts)', '$15', 'A chocolate cake with strawberry bits inside. Steal the heart of those you share this cake with', 'heartlesscake.jpg')
    @phantomT = Cakes.new('Phantom Thieves Cake (Persona 5)', '$15', 'An extremely delicious cake that will take your heart. You\'ll never see the flavor coming.', 'phantomcake.jpg')
    @midgar = Cakes.new('Midgar (Final Fantasy 7)', '$25', 'A large chocolate cookie cake that will help you break your limits!', 'midgarcake.jpg')
    @moogleCake = Cakes.new('Moogle', '$25', 'A large vanilla cake with cookies, kupo!', 'mooglecake.jpg')
    @elegant = Cakes.new('Elegant Orange Cake', '$15', 'A recipeh from Final Fantasy XV courtesy of Ignis. Contains oranges!', 'orangepoundcake.png')
    erb :cakes
end

get '/cookies' do
    @chococookie = Cookies.new('Chococookie', '$2', 'A sugar cookie with lemon icing that will make you smile and KWEEHH like a Chocobo.', 'sugarcookies.jpg')
    @tonberry = Cookies.new('Tonberry', '$2', 'A sugar cookie with matcha icing that will make you feel the killing intent of a Tonberry', 'sugarcookies.jpg')
    @bomb = Cookies.new('Cookie Bomb', '$2', 'A sugar cookie with cinnamon icing that will make your taste buds explode like a Bomb!', 'sugarcookies.jpg')
    @moogle = Cookies.new('Moogle', '$2', 'A vanilla cookie with vanilla and strawberry icing that will make you say kupo at the end of every sentence, kupo!', 'sugarcookies.jpg')
    @cactuar = Cookies.new('Cactuar', '$2', 'A green tea flavored sugar cookie that will make you spin around on one leg like a Cactuar!', 'sugarcookies.jpg')
    @ffGinger = Cookies.new('Gingerbread Cookies', '$1', 'Gingerbread cookies that come in the shape of various allies and enemies!', 'ffGinger.jpg')
    erb :cookies
end

get '/muffins' do
    @honey = Muffins.new('Honey Muffins', '$4', 'Honey flavored muffins from the land of Eorzea!', 'honeymuffins.png')
    @blueberry = Muffins.new('Blueberry Muffins', '$4', 'The standard blueberry muffin. Don\'t fix what isn\'t broken.', 'blueberrymuffins.jpg')
    @appmuffins = Muffins.new('Apple Pie Muffins', '$6', 'Apple pies? Muffins? Why not both?', 'applemuffins.jpg')
    erb :muffins
end