
#Copy
word_array = words.split
counter = Hash.new(0)

word_array.each {|word| counter[word] += 1}
counter = counter.sort_by do |word, count |
  count
end

counter.reverse!

counter.each do |word, count |
  puts word + ":" + count.to_s
end


#TRY n+2


#array.each {|word| counter[word] +=1 }
counter.each {|word, count| counter[word] +=1 }

counter = counter.sort_by do |word, count|
  count
end
counter.reverse!

counter.each do |word, count|
  puts word + ": " + count.to_s
end
end
end
