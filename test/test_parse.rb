require 'yaml'

class TestParser
  
  attr_reader :query, :input_file, :output_file
  
  def initialize( query, input_file, output_file )
    @query = query
    @input_file = input_file
    @output_file = output_file  
  end
  
  def check_args 
    unless @query != nil && @input_file != nil && @output_file != nil
      #puts "Error => exception: <query> <your_fasta_file> <your_output.txt>"
      return false
    end
      return true
  end
 
  def check_first_symbol
    #puts self.to_yaml   
    open_fasta = File.open(@input_file, "r" )
    seq_array = open_fasta.each_char.to_a
    if seq_array[0] =~ /\>/
      puts "Verified"
      return true
    else 
      puts "Not a fasta file!"
      return false
    end
    open_fasta.close
  end
  
  def iter_by_line
    f_open = File.open( @input_file, "r" )
    #f_open.each_line { |f| puts f }
    while( cur_line = f_open.gets )
      #puts cur_line
    end
    if cur_line == nil
      puts "End of file"
      return nil
    end
    f_open.close
  end
  
  
end
#STDERR.puts "FILE = #{__FILE__}"
#if __FILE__ == $0 
  tp = TestParser.new( query = ARGV[0], input_file = ARGV[1], output_file = ARGV[2] )
  tp.check_args
  tp.check_first_symbol
  tp.iter_by_line
#end