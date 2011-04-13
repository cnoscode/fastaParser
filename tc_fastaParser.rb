require 'test/unit'
require 'testParse.rb'

class TestArgs < Test::Unit::TestCase
  
  def test_args_and_ext
    assert_equal(true, TestParser.new(ARGV[0] = 'ccgga', ARGV[1] ='test.fasta', ARGV[2] = 'results.txt').check_args_and_file_ext, "Doesn't work")
  end
  
  def test_fasta_exists
    
  end
  
  def test_if_fasta
       
  end
  
end 

