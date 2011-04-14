class TestParser
  
  attr_reader :query, :input_file, :output_file
  
  def initialize( query, input_file, output_file )
    @query = query
    @input_file = input_file
    @output_file = output_file  
  end
  
  def check_args_and_file_ext 

   unless self.query != nil && self.input_file != nil && self.output_file != nil 
      puts "Error => exception: <query> <your_fasta_file.fasta> <your_output.txt>"
     return false
    end
    
    self.input_file.downcase[-6..-1] == '.fasta'
    return true
  end
  
#  def fasta_in_dir
#    if Dir[input_file] != []
#      puts "File exists"
#      return true
#      #@input_file == 'test.fasta'
#    else
#      puts "Error => exception: File not found"
#      return false
#    end  
#  end

  def check_first_symbol_in_fasta
    begin
      open_fasta = File.open( @input_file, "r" )
      seq_array = open_fasta.each_char.to_a
      seq_array[0] == ">"
      return true
    rescue
      return false
    end
  end

end

test = TestParser.new( query = ARGV[0], input_file = ARGV[1], output_file = ARGV[2] )
test.check_args_and_file_ext
test.check_first_symbol_in_fasta