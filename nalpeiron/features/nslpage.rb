class NslPage
	include PageObject

	page_url "http://my.nalpeiron.com/nsl.aspx"

	span(:logged_user, :id => 'lblLoginUser')

end