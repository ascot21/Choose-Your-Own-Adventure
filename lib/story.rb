require 'csv'
require_relative 'fork'


class Story

  attr_reader :all_forks

  def initialize
    @all_forks = {}
    CSV.foreach("forkslist.csv", :headers => true) do |row|
      story_text = File.open("forks/#{row[0]}.txt", "r").read
      @all_forks[row[0]] = Fork.new(row[0],story_text,row[1],row[2],row[3],row[4])
    end
  end

  def get_fork(id)
    @all_forks[id.to_s]
  end

end