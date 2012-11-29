anagrams = {}
open('wordlist.txt').each do |word| 
    word_sorted_alphabetically = word.chomp.downcase.split('').sort.join 
    (anagrams[word_sorted_alphabetically] ||= []) << word.chomp
end

anagrams.sort{|a,b| a[1].size <=> b[1].size}.each do |_, anagram_list|
    puts "#{anagram_list.size}: #{anagram_list.join(' ')}" if anagram_list.size > 1 
end
