Feature: Keep track of inventory
	As a employee
	I want to keep track of inventory

Background:
	Given a product Milk with quantity 100 in stock
	Given a product Egg with quantity 100 in stock

Scenario: Customer buy one product
	When customer buy Milk with quantity 3
	Then Milk quantity in stock should be 97

Scenario: Customer buy multiple products
	When customer buy Milk with quantity 5
	And customer buy Egg with quantity 10
	Then Milk quantity in stock should be 95
	And Egg quantity in stock should be 90

Scenario: Re-order one product
	When I order Egg with quantity 50
	Then Egg quantity in stock should be 150

Scenario: Re-order multiple product
	When I order Milk with quantity 100
	And I order Egg with quantity 70
	Then Milk quantity in stock should be 200
	Then Egg quantity in stock should be 170
