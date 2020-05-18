# language: en

Feature: Insert product in the cart and check it out.

@cart
Scenario Outline: Choosing a product and checking the cart
Given that the customer searches for the '<product>'
When inserting it in the cart
Then the same product chosen must be on the list
Examples:
    | product               |
    | iphone 11 pro         |

