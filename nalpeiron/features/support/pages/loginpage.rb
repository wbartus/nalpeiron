class LoginPage
	include PageObject

	page_url "http://my.nalpeiron.com/"
	text_field(:username, :id => 'MainContent_Login_UserName')
	text_field(:password, :id => 'MainContent_Login_Password')
	button(:login, :id => 'MainContent_Login_btnLogin')

	def log_me_in(user, pass)
		self.username = user
		self.password = pass
		login
	end

end