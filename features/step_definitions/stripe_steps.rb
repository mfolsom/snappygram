When(/^I enter payment details$/) do
	visit root_path
	click_link 'Buy Snap'
	first('.stripe-button-el').click
	sleep 5
	within_frame("stripe_checkout_app") do
	fill_in('email', with: 'example@example.com')
	fill_in('card_number', with: '4242 4242 4242 4242')
	fill_in('cc-exp', with: '01/25')
	fill_in('cc-csc', with: '123')
	click_button 'Pay $5.00'
	sleep 10
end
end

Then(/^I can buy a snap$/) do
	expect(page).to have_content('Thanks, you paid $5.00')
end