require 'pry'
require_relative '../lib/concerns/memorable'

class Song

  include Paramable
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  extend Findable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
