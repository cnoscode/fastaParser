require 'test/unit'
require 'test_parse'

class TestArgs < Test::Unit::TestCase
  
  def test_args 
    #puts
    #STDERR.puts "FILE = #{__FILE__}"
    tp = TestParser.new('ccgga', 'test/test.fasta', 'results.txt')
    assert(tp.check_args == true)
  end

  def test_if_fasta
    tp = TestParser.new('ccgga', 'test/test.fasta', 'results.txt')
    assert(tp.check_first_symbol == true)
  end
  
  def test_get_first_entry
    tp = TestParser.new('ccgga', 'test/test.fasta', 'results.txt')
    assert_equal(nil, @first_entry)
  end
  
end 

