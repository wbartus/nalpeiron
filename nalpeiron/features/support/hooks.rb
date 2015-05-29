require 'watir-webdriver'

if ENV['BROWSER'] == 'FIREFOX'

	browser = Watir::Browser.new :firefox
else
	browser = Watir::Browser.new :chrome

end


Before do
  @browser = browser

end

at_exit do
  browser.close
end


=begin
After do
  @browser.close
end
=end