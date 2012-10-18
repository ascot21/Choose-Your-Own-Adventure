class Fork

  attr_reader :id, :story, :path1, :path2, :finish, :score

  def initialize(id,story,path1,path2,finish,score)
    @id = id
    @story = story
    @path1 = path1
    @path2 = path2
    @finish = finish
    @score = score
  end

end