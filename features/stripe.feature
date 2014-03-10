Feature: Stripe

	@javascript
	Scenario: Taking Payments
		Given I am logged in
		And I upload a new photo and add a description
		And I enter payment details
		Then I can buy a snap