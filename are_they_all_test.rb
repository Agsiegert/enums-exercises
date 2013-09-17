gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreTheyAllTest < Minitest::Test

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      if !(number == 0)
        all_zeros = false
      end
    end
    refute all_zeros
  end

  def test_all_zeros
  
    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      if !(number == 0)
        all_zeros = false
      end
    end
    assert all_zeros
  end

  def test_all_gone
    
    words = %w(gone gone gone gone gone gone gone)
    all_gone = true
    words.each do |word|
      if !(word == 'gone')
        all_gone = false
      end
    end
    assert all_gone
  end

  def test_not_all_gone
    
    words = %w(gone gone gone gone gone gone gone yepp)
    all_gone = true
    words.each do |word|
      if word == 'gone'
        all_gone = false
      end
    end
    refute all_gone
  end

  def test_all_empty
    
    words = ["", "", "", "", ""]
    all_empty = true
    words.each do |word|
      if !(word == '')
        all_empty = false
      end
    end    
    assert all_empty
  end

  def test_not_all_empty
    skip
    words = ["full", "", "", "", "", ""]
    all_empty = false
    words.each do |word|
      if !(word == 'gone')
        all_empty = true
      end
    end
    refute all_empty
  end
end

