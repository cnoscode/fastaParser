require 'test/unit'
require 'testParse.rb'

class TestArgs < Test::Unit::TestCase
  
  def test_args_and_ext
    tp = TestParser.new('ccgga', 'test.fasta', 'results.txt')
    assert(tp.check_args_and_file_ext == true)
  end

#  def test_fasta_exists
#    tp = TestParser.new('ccgga', 'test.fasta', 'results.txt')
#    assert(tp.fasta_in_dir == true) 
#  end

  def test_if_fasta
    tp = TestParser.new('ccgga', 'test.fasta', 'results.txt')
    assert(tp.check_first_symbol_in_fasta == true)         
  end

end 

