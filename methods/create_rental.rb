def create_rental(book)
  print 'Date: '
  date = gets.chomp
  book.add_rental(date)
  puts "Rental created successfully!"
  sleep(0.8)
end