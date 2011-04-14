module Parse

  class FastaParser
    
    def search_fasta( query, input_file, output_file ) 
    
      unless ARGV.length == 3 && input_file.downcase[-6..-1] == '.fasta'
        puts "Error => exception: ruby testParse.rb <query> <your_fasta_file.fasta> <your_output.txt>"
        puts "                    Fasta file must be in '.fasta' format."
        exit
      end
      
      open_fasta = File.open( input_file, "r" )
      char_array = open_fasta.each_char.to_a
      
      unless  char_array[0] =~ />/
        puts "Error => exception: Please input a FASTA file."
        exit
      end
      
      input_file = char_array.to_s.chomp
      seqs_in_array = input_file.split("\n\n")
      
      results_file = File.open( output_file, "w" )
      hits_counter = 0
      
      seqs_in_array.each do |each_entry|
        if each_entry.sub(/\n/, '') =~ /#{query}/i
          results_file.puts "Search hit #{hits_counter += 1} :"
          results_file.puts each_entry
        end
      end
      puts "Sequences that match query: #{hits_counter}"
    
      open_fasta.close
      results_file.close
    
    end
  
  end
  parser = FastaParser.new
  parser.search_fasta( query = ARGV[0], input_file = ARGV[1], output_file = ARGV[2] )
  
end