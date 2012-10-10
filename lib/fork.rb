class Fork

  attr_reader :id, :story, :path1, :path2, :finish

  def initialize(id,story,path1,path2,finish)
    @id = id
    @story = story
    @path1 = path1
    @path2 = path2
    @finish = finish
  end

  def end?
    if @finish == true
      true
    else
      false
    end
  end

end