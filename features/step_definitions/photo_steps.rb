Given(/^I upload a new photo$/) do
  visit snaps_new_path
  attach_file("snap[image]", File.join(File.dirname(__FILE__), "../images/ave_page_load.png"))
  click_button 'Upload Snap'
end

Then(/^I can see that photo$/) do
  expect(page).to have_xpath("//img")
end

Given(/^I upload multiple photos$/) do
  visit snaps_new_path
  attach_file("snap[image]", File.join(File.dirname(__FILE__), "../images/ave_page_load.png"))
  click_button 'Upload Snap'
  visit snaps_new_path
  attach_file("snap[image]", File.join(File.dirname(__FILE__), "../images/ave_page_load2.png"))
  click_button 'Upload Snap'
end

Then(/^I can see all of them in decreasing order$/) do

  # first_position = find(:xpath, "//img[@src='#{Snap.first.image.url}']")
  # second_position = find(:xpath, "//img[@src='#{Snap.last.image.url}']")
  # first_position < second_position
  first = page.all(:xpath, "//img").first[:src]
  second = page.all(:xpath, "//img").last[:src]
  expect(first).to eq(Snap.last.image.url(:medium))
  expect(second).to eq(Snap.first.image.url(:medium))
end
