Feature: View Snaps

	Scenario: user can view snaps without logging in
	Given I am logged in
	And I upload multiple photos
	And I am not logged in
	Then I can see all of them in decreasing order
