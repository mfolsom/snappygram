Feature: Upload photos

Scenario: can upload and save a photo
Given I upload a new photo and add a description
Then I can see that photo and the description

Scenario: user can see the photos in the timeline
Given I upload multiple photos
Then I can see all of them in decreasing order