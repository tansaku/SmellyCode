def do_something(c, d2=[],k5={},f=true)
  c.sort do |a,b| a[:o]+a[:n] <=> b[:o]+b[:n]
  end.select do |i|
    i[:s] == :c end.select do |i|
      i[:l] == :c
    end.each do |i|
    puts "#{i[:o]}'s #{i[:n]}"
    end
end