Given(/^I upload a new photo and add a description$/) do
  visit snaps_new_path
  attach_file("snap[image]", File.join(File.dirname(__FILE__), "../images/ave_page_load.png"))
  fill_in("snap[description]", :with => "some description")
  click_button 'Upload Snap'
end

Then(/^I can see that photo and the description$/) do
  expect(page).to have_xpath("//img")
  expect(page).to have_content("some description")
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
  first = page.all(:xpath, "//img").first[:src]
  second = page.all(:xpath, "//img").last[:src]
  expect(first).to eq(Snap.last.image.url(:medium))
  expect(second).to eq(Snap.first.image.url(:medium))
end

Given(/^I click on that snap$/) do
  @clicked_image = page.all(:xpath, "//img").first[:src]
  click_link('snap-detail')
end

Then(/^I should see snap detail page$/) do
  expect(current_path).to eq(show_detail_path(Snap.first))
end

Then(/^that particular snap$/) do
  expect(page).to have_xpath("//img[@src='#{@clicked_image}']")
  expect(page).to have_content("some description")
end

Given(/^I am not logged in$/) do
  visit '/users/sign_out'
end

Given(/^I go to the upload snap page$/) do
  visit '/snaps/new'
end

Then(/^I should see a login form$/) do
  expect(page).to have_content('You need to sign in or sign up before continuing.')
end

Then(/^I should not see upload snap page$/) do 
  expect(page).not_to have_content('Upload Snap')
end
