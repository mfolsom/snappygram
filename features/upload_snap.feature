Feature: Upload photos

Scenario: can upload and save a photo
Given I am logged in
And I upload a new photo and add a description
Then I can see that photo and the description

Scenario: user can see the photos in the timeline
Given I am logged in
And I upload multiple photos
Then I can see all of them in decreasing order

Scenario: cannot see upload snap page if not logged in
Given I am not logged in
And I go to the upload snap page
Then I should see a login form
And I should not see upload snap page