# frozen_string_literal: true

require_relative '../pages/base_pages.rb'

class ResultSearch
  include Capybara::DSL
  attr_reader :r_search

  def title_correct?
    find('#main-title', text: $product)
  end

  def checkout
    @itenscart = '.icon-cart'
    all(@itenscart)[0].hover
    all('.edit-checkout-full')[0].click
    all('.BasketItemProduct-info-title p')[0].text == @name_afterchoose
  end

  def choose_product
    title_correct?

    all('.nm-product-img')[2].click
    @name_afterchoose = find('.header-product__title').text
    find('.button__buy-product-detail').click

    if all('.BasketItemProduct-info-title p')[0].text == @name_afterchoose
      within('.BasketPriceBox') do
        click_on('Comprar mais produtos')
      end
    end
  end
end
