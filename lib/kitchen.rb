def print_clean_cupboard_items(contents)
  clean_cupboard_items = get_clean_cupboard_items(contents)
  
  clean_cupboard_items.sort do |a,b| 
    a[:owner]+a[:name] <=> b[:owner]+b[:name]
  end.each do |item|
    puts "#{item[:owner]}'s #{item[:name]}"
  end
end

def get_clean_cupboard_items(contents)
  contents.select do |item|
    item[:status] == :clean 
  end.select do |item|
    item[:location] == :cupboard
  end
end

# obscure method name, variables
# long method
# doing several things