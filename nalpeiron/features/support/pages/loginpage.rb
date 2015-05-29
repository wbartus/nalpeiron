class LoginPage
	include PageObject
	include DataMagic


	page_url "http://my.nalpeiron.com/"
	text_field(:username, :id => 'MainContent_Login_UserName')
	text_field(:password, :id => 'MainContent_Login_Password')
	button(:login, :id => 'MainContent_Login_btnLogin')
	div(:error_message, :id => 'pnlLoginError')

	def log_me_in(data)
		populate_page_with data_for(data.to_sym)
		login
	end
	


end