require 'watir-webdriver'

browser = Watir::Browser.new :chrome

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