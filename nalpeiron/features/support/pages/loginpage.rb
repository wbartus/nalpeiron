class LoginPage
	include PageObject

	DEFAULT_DATA = {
		'username' => Faker::Internet.free_email,
		'password' => Faker::Internet.password
	}


	page_url "http://my.nalpeiron.com/"
	text_field(:username, :id => 'MainContent_Login_UserName')
	text_field(:password, :id => 'MainContent_Login_Password')
	button(:login, :id => 'MainContent_Login_btnLogin')
	div(:error_message, :id => 'pnlLoginError')

	def log_me_in(user, pass)
		self.username = user
		self.password = pass
		login
	end

	def fill_with_data(data={})
		fill_hash = DEFAULT_DATA.merge(data)
		populate_page_with fill_hash
		puts "Used dara:"
		puts "User: #{fill_hash['username']}"
		puts "User: #{fill_hash['password']}"
		login
	end


end