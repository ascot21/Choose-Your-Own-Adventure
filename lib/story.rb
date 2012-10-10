require 'csv'
require_relative 'fork'


class Story

  attr_reader :all_forks

  def initialize
    @all_forks = {}
    CSV.foreach("./lib/forkslist.csv", :headers => true) do |row|
      @all_forks[row[0]] = Fork.new(row[0],row[1],row[2],row[3],row[4])
    end
  end

  def get_fork(id)
    @all_forks[id.to_s]
  end

end