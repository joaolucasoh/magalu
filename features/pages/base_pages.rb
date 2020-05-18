# frozen_string_literal: true

require_relative 'home_pages'

class MagazinePages
  attr_accessor :search, :r_search

  def initialize
    @search = Search.new
    @r_search = ResultSearch.new
  end
end
