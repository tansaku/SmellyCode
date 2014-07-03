def print_inventory_by_owner(contents)
  contents.sort do |a,b| 
    a[:owner]+a[:name] <=> b[:owner]+b[:name]
  end.select do |item|
    item[:state] == :clean
  end.select do |item|
    item[:location] == :cupboard
  end.each do |item|
    puts "#{item[:owner]}'s #{item[:name]}"
  end
end