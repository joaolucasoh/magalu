# frozen_string_literal: true

require_relative '../pages/base_pages.rb'

class Search < SitePrism::Page
  include Capybara::DSL
  attr_reader :search

  element :search_btn, '#btnHeaderSearch'

  def input_product(product)
    $product = product
    all('#inpHeaderSearch')[0].set($product)
    search_btn.click
  end
end
