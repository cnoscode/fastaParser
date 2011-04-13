class TestParser

  attr_reader :query, :input_file, :output_file
  
  def initialize( query, input_file, output_file )
    @query = query
    @input_file = input_file
    @output_file = output_file
  end
  
  def check_args_and_file_ext
=begin   
   unless ARGV.length == 3 
      puts "Error => exception: <query> <your_fasta_file.fasta> <your_output.txt>"
     exit
    end
    unless input_file.downcase[-6..-1] == '.fasta'
      puts "Error => exception: Fasta file must be in '.fasta' format."
      exit
    end
=end
   ARGV.length == 3 && input_file.downcase[-6..-1] == '.fasta' && output_file.downcase[-4..-1] == '.txt'
  end
  
  def fasta_in_dir? input_file
    if Dir[input_file] != []
      puts "File exists"
    else
      puts "Error => exception: File not found"
      exit
    end
  end
  
  def check_first_symbol_in_fasta
    
  end
  
end

test = TestParser.new( query = ARGV[0], input_file = ARGV[1], output_file = ARGV[2] )
test.check_args_and_file_ext
test.fasta_in_dir?( input_file = ARGV[1] )