require 'music_module.rb'

class Artist
  extend MusicModule::ClassMethods
  include MusicModule::InstanceMethods
  
  attr_accessor :destroy_all, :create, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end

  def self.all
      @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

end