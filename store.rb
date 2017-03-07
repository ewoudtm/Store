# initialize datasets
@shopping_cart = []

@depts = [:fiction, :nonfiction, :travel, :children]

@books = {
  fiction: [
    {itemnr:101 , title: "De Greppel" , author: "Herman Koch", price: 21.99},
    {itemnr:102 , title: "De ondergrondse spoorweg", author: "Colson Whitehead", price: 21.99},
    {itemnr:103 , title: "DJ", author: "Kluun" , price: 19.99},
    {itemnr:104 , title: "De Overloper", author: "Siegfried Lenz", price: 19.90},
    {itemnr:105 , title: "Eden", author: "Marcel Moring", price: 19.99}
  ],
  nonfiction: [
    {itemnr:201 , title: "Hygge", author: "Melk Wiking", price: 19.99},
    {itemnr:202 , title: "Lenin in de trein", author: "Catherine Merridale", price: 29.90},
    {itemnr:203 , title: "Katoen", author: "Sven Beckert", price: 49.90 }
  ],
  travel: [
    {itemnr:301 , title: "Depart", author: "Sizoo Brother", price: 39.99},
    {itemnr:302 , title: "Wildside" , author: "Multiple" , price: 43.90},
    {itemnr:303 , title: "Lonely Planet: Vietnam", author: "-", price: 23.50},
    {itemnr:304 , title: "Lonely Planet: France", author: "-", price: 22.50}
  ],
  children: [
    {itemnr:401 , title: "Nijntje", author: "Dick Bruna", price: 16.95},
    {itemnr:402 , title: "Pinkeltje", author: "Dick Laan", price: 12.95},
    {itemnr:403 , title: "GVR", author:"Roald Dahl" , price: 18.95}
  ]
}

# @buy_a_book = "Yes"

# helper programs ###############

def print_divider
  puts "*" * 40
  # puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

# helper programs ##############

def print_depts
  print_divider
  counter = 1
  @depts.each  do |dept|
    puts "#{counter} - #{dept}"
    counter += 1
  end
  print_divider
end

def dept_chooser
  dept_choice = 0
  while dept_choice < 1 || dept_choice > 4
    puts "Please enter the number of the department you wish to browse"
    dept_choice = gets.chomp.to_i
  end
  dept_choice -= 1
  puts "Welcome to department #{@depts[dept_choice]}"
  return (dept_choice)
end

def print_books(current_dept)
  cur_dept = @depts[current_dept]
  @books[cur_dept].each do |dept_books|
    puts "#{dept_books[:itemnr]} - title: #{dept_books[:title]} by #{dept_books[:author]} for #{dept_books[:price]} Euros."
  end
end

def buy_product(current_dept)
  puts "Please enter the number of the item to add it to the shopping cart."
  chosen_item = gets.chomp.to_i
  cur_dept = @depts[current_dept]
  @books[cur_dept].each do |dept_books|
    if dept_books[:itemnr] == chosen_item
        @shopping_cart << dept_books
    end
  end
  puts "Thank you, your cart is as follows:"
  print_cart

end

def print_cart
  @shopping_cart.each do |book|
    puts "#{book[:itemnr]} - title: #{book[:title]} by #{book[:author]} for #{book[:price]} Euros."
  end
  print_divider
  puts "Totalling: #{cart_total} Euros."
end

def cart_total
  total = 0
  @shopping_cart.each do |book|
    total += book[:price]
  end
  return total
end

def buy_another_book
  puts "Would you like to buy another book?"
  buy_a_book = gets.chomp.downcase
  if buy_a_book == "no" || buy_a_book == "n"
    return "no"
  elsif buy_a_book == "yes" || buy_a_book == "y"
    return "yes"
  else
    buy_another_book
  end
end



#*********** MAIN *******************

puts "Welcome to my bookstore, we have the following departments: "
loop do
  print_depts

  chosen_dept = dept_chooser
  print_books(chosen_dept)

  buy_product(chosen_dept)

  if buy_another_book == "no"
    puts "Thank you for your service."
    puts "You have purchased: "
    print_cart
    break
  end
end
