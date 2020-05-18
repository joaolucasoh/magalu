# frozen_string_literal: true

Given('that the customer searches for the {string}') do |product|
  @magazine.search.input_product(product)
end

When('inserting it in the cart') do
  @magazine.r_search.choose_product
end

Then('the same product chosen must be on the list') do
  expect(@magazine.r_search.checkout).to be_truthy
end
