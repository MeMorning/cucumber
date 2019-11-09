Feature: Deposit money into account

Background:
	Given Amount of money in account is 2615 Baht

Scenario: Deposit money
	When I deposit 200 Baht into my account
	Then Amount of money in my account should be 2415 Baht
