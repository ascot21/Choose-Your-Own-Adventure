require 'test/unit'
require 'fork'

class ForkTest < Test::Unit::TestCase

  def test_01_fork_has_ID
    item = Fork.new(12,"abcd",2,3,false)
    assert_equal(12,item.id)
  end

  def test_02_fork_has_story
    item = Fork.new(12,"abcd",2,3,false)
    assert_equal("abcd",item.story)
  end

  def test_03_fork_has_path1
    item = Fork.new(12,"abcd",2,3,false)
    assert_equal(2,item.path1)
  end

  def test_04_fork_has_path2
    item = Fork.new(12,"abcd",2,3,false)
    assert_equal(3,item.path2)
  end

  def test_05_fork_is_end?
    item = Fork.new(12,"abcd",2,3,false)
    item2 = Fork.new(12,"abcd",2,3,true)
    assert_equal(false,item.end?)
    assert_equal(true,item2.end?)
  end


end