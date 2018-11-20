require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(path = "")
    @path = path
    @files = []
  end
  
  def files
    Dir["#{path}/*.mp3"].each { |i| @files << i.split("mp3s/")[1]}
  end
end