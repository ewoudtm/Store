# initialize datasets
@shopping_cart = []

@depts = [:fiction, :non_fiction, :travel, :children]

@books = {
  fiction:[
    {itemnr:101 , title: "De Greppel" , author: "Herman Koch", price: 21.99}
    {itemnr:102 , title: "De ondergrondse spoorweg", author: "Colson Whitehead", price: 21.99}
    {itemnr:103 , title: "DJ", author: "Kluun" , price: 19.99}
    {itemnr:104 , title: "De Overloper", author: "Siegfreied Lenz", price: 19,90}
    {itemnr:105 , title: "Eden", author: "Marcel Moring", price: 19.99}
  ],
  non_ficton:[
    {itemnr:201 , title: "Hygge", author: "Melk Wiking", price: 19.99}
    {itemnr:202 , title: "Lenin in de trein", author: "Catherine Merridale" , price: 29.90 }
    {itemnr:203 , title: "Katoen", author: "Sven Beckert", price: 49.90 }
  ],
  travel:[
    {itemnr:301 , title: "Depart", author: "Sizoo Brother", price: 39.99}
    {itemnr:302 , title: "Wildside" , author: "Multiple" , price: 43.90}
    {itemnr:303 , title: "Lonely Planet: Vietnam", author: "-", price: 23.50 }
    {itemnr:304 , title: "Lonely Planet: France", author: "-", price: 22.50}
  ],
  children:[
    {itemnr:401 , title: "Nijntje", author: "Dick Bruna", price: 16.95}
    {itemnr:402 , title: "Pinkeltje", author: "Dick Laan", price: 12.95}
    {itemnr:403 , title: "GVR", author:"Roald Dahl" , price: 18.95}
  ]
}


# helper programs ###############

def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

# helper programs ##############
