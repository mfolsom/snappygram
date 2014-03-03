Given(/^I upload a new photo$/) do
  visit snaps_new_path
  puts File.join(File.dirname(__FILE__), "../images")
  attach_file("snap[image]", File.join(File.dirname(__FILE__), "../images/ave_page_load.png"))
  click_button 'Upload Snap' 
end

Then(/^I can see that photo$/) do
  expect(page).to have_xpath("//img")
end