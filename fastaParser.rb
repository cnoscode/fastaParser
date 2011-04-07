def search_fasta query
  input_file = File.open("/Users/cjose/work/ruby_exercises/test.fa", "r" )

  char_array = input_file.each_char.to_a
  
  unless char_array[0] =~ />/
    puts "Error: Please input a FASTA file."
    exit
  end
  
  input_file = char_array.to_s.chomp
  seqs_in_array = input_file.split("\n\n")
  results_file = File.new("/Users/cjose/work/ruby_exercises/search_results.txt", "w")
  hits_counter = 0
  
  seqs_in_array.each do |each_entry|
    if each_entry =~ /#{query}/i
      results_file.puts "Search hit #{hits_counter += 1} :"
      results_file.puts each_entry
    end
  end
puts "Sequences that match query: #{hits_counter}"
end
search_fasta("GACCT")
# CTGAAGTTAAATTTAATAAAAAAAAAAAAAAAAA