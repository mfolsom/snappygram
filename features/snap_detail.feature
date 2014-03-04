Feature: Snap Detail

Scenario: can see details of a snap
Given I upload a new photo and add a description
And I click on that snap
Then I should see snap detail page
And that particular snap