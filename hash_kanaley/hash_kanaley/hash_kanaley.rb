############################################################
#
# Name:        Sean Kanaley
# Assignment:  Hash Assignment
# Date:        2/22/2017
# Class:       CIS 282
# Description: Create a menu driven program to interact with a set of products
#
############################################################

products_hash = {}
products_file = File.open("products.txt")
while !products_file.eof?
  product = products_file.gets.chomp
  pieces = product.split(',')
  products_hash[pieces[0].to_i] = [pieces[1], pieces[2].to_f]
end
products_file.close

def menu(menu_items, prompt)
  menu_items.each_with_index do | item, item_number |
    puts "#{item_number + 1}. #{item}"
  end
  print prompt
  user_choice = gets.to_i
  return user_choice
end

user_menu = [
    "View all products",
    "Add a new product",
    "Delete a product",
    "Update a product",
    "View highest priced product",
    "View lowest priced product",
    "View sum of all product prices",
    "Exit"

]

def print_hash(catalog)
  puts "Item" + "   " + "Description" + "   " + "Price"
  puts "----" + "   " + "-----------" + "   " + "------"
   catalog.each do |key, value|
    print "#{key}".ljust(4) + "   " + "#{value[0]}".ljust(11) + "   " + "#{value[1]}".ljust(6)
     puts "\n"
    end
end

def order_hash(arr)
    arr.sort_by {|k, v| v[1]}
  end



while user_choice = menu(user_menu, "Please make a selection: ")

product_sum = 0

case user_choice
  when 1
    print_hash(products_hash)
    puts
  when 2
    print_hash(products_hash)
    new_id = rand(100..999)
    while products_hash.has_key?(new_id)
      new_id = rand(100..999)
    end
    puts
    puts "Enter a product name you would like to add: "
    product_description = gets.chomp.upcase
      puts "Enter a product price: "
      product_price = gets.to_f
      products_hash[new_id] = [product_description, product_price]
  when 3
    print_hash(products_hash)
    puts "Enter the product ID you would like to delete: "
    product_id = gets.chomp.to_i
    products_hash.each do|key, value|
      if product_id == key
        products_hash.delete(product_id)
        puts
        puts "product #{product_id} has been removed."
      end
    end
  when 4
    print_hash(products_hash)
    puts
    puts "Enter the product item ID you would like to update: "
    product_id = gets.chomp.to_i
    products_hash.each do|key, value|
      if product_id == key
        puts "What is the new description?: "
        product_description = gets.chomp.upcase
        puts "What is the new price?: "
        product_price = gets.to_f
        products_hash[product_id] = [product_description, product_price]
      end
    end


  when 5
    # I think I need to look back through the lectures, I tried many different ways and couldn't figure it out.
    order_hash(products_hash)
    print_hash(products_hash)
    puts
  when 6
    # Same as above :(
    order_hash(products_hash).reverse
    print_hash(products_hash)
    puts
  when 7
    products_hash.each do |key, value|
      product_sum += value[1]
    end
    total_cost = "%.2f" % product_sum
    puts "Your total cost for all products is #{total_cost}"
    puts
  when 8
    products_file = File.open("products.txt", 'w')
    products_hash.each do |key, value|
      products_file.print "#{key},#{value[0]},#{value[1]}""\n"

    end
    products_file.close
    abort("Saving and exiting")
end
end


print_hash(products_hash)


#print_hash(products_hash)



