Given(/^I upload a new photo$/) do
  visit snaps_new_path
  attach_file("snap[image]", '/Users/meganfolsom/Documents/images/ave_page_load.png')
  click_button 'Upload Snap' 
end

Then(/^I can see that photo$/) do
  expect(page).to have_xpath("//img")
end