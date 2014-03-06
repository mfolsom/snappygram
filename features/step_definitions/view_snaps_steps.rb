Given(/^I log out$/) do
    click_link 'Logout'    
end

Given(/^I upload mmore than five photos$/) do

 10.times do
  visit snaps_new_path
  attach_file("snap[image]", File.join(File.dirname(__FILE__), "../images/ave_page_load.png"))
  click_button 'Upload Snap'
end
  # visit snaps_new_path
  # attach_file("snap[image]", File.join(File.dirname(__FILE__), "../images/ave_page_load2.png"))
  # click_button 'Upload Snap'
end

Then(/^I can see pagination$/) do
  expect(page).to have_content("Next →")
end
