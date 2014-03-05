Feature: Snap Detail

Scenario: can see details of a snap
Given I am logged in
And I upload a new photo and add a description
And I click on that snap
Then I should see snap detail page
And that particular snap
And who uploaded it