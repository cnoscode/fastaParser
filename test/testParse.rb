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
    puts "Args and file ext correct"
=end
    ARGV.length == 3 && input_file.downcase[-6..-1] == '.fasta' && output_file.downcase[-4..-1] == '.txt'
  end
  
  def fasta_in_dir input_file
    #if Dir[input_file] != []
      #puts "File exists"
      input_file == 'test.fasta'
    #else
      #puts "Error => exception: File not found"
      #exit
    #end  
  end
=begin  
  def check_first_symbol_in_fasta input_file
    open_fasta = File.open( input_file, "r" )
    puts open_fasta
    seq_array = open_fasta.each_char.to_a
    puts seq_array[0] == ">"
  end
=end
end

test = TestParser.new( query = ARGV[0], input_file = ARGV[1], output_file = ARGV[2] )
test.check_args_and_file_ext
test.fasta_in_dir( input_file = ARGV[1] )
#test.check_first_symbol_in_fasta( input_file = ARGV[1] )