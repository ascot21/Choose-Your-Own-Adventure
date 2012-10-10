require 'test/unit'
require 'story'

class StoryTest < Test::Unit::TestCase

  def test_01_find_fork
    item = Story.new
    assert_equal(Fork,item.get_fork(2).class)
  end

  def test_02_get_fork_story
    item = Story.new
    item = item.get_fork(3)
    assert_equal("ghij",item.story)
  end

  def test_03_get_fork_story
    item = Story.new
    item = item.get_fork(2)
    assert_equal("4",item.path1)
  end

end