Given(/^I register as a new user$/) do
  visit 'users/sign_up'
  fill_in('user[email]', :with => 'example@example.com')
  fill_in('user[username]', :with => 'exampleuser')
  fill_in('user[password]', :with => 'password')
  fill_in('user[password_confirmation]', :with => 'password')
  click_button 'Sign up'
end

Then(/^I will see a welcome message$/) do
  expect(page).to have_content('Welcome! You have signed up successfully.')
end