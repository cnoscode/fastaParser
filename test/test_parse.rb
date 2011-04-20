require 'yaml'

class TestParser
  
  attr_reader :query, :input_file, :output_file
  
  def initialize( query, input_file, output_file )
    @query = query
    @input_file = input_file
    @output_file = output_file
    @first_entry = ''
    @first_title = ''
    @first_sequence = ''
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
  
  def get_first_entry
    f_open = File.open( @input_file, "r" )
    entry_ctr = 0
      f_open.each do |line|
        if line == "\n"
          entry_ctr += 1
          break
        end
        @first_entry += line
      end
    puts @first_entry
    
    #puts entry_ctr
  end

  
end
#STDERR.puts "FILE = #{__FILE__}"
#if __FILE__ == $0 
  tp = TestParser.new( query = ARGV[0], input_file = ARGV[1], output_file = ARGV[2] )
  tp.check_args
  tp.check_first_symbol
  tp.get_first_entry
#end