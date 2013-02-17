include ApplicationHelper

def valid_signin(user)
	fill_in "Email", with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
end

def sign_in(user)
		visit signin_path
		fill_in "Email", with: user.email
		fill_in "Password", with: user.password
		click_button "Sign in"



	#sign in when not using capybara
	cookies[:remember_token] = user.remember_token
end

