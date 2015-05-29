class NslPage
	include PageObject
	include DataMagic

	page_url "http://my.nalpeiron.com/nsl.aspx"

	span(:logged_user, :id => 'lblLoginUser')

	def take
		self.data_for :correct
	end

end