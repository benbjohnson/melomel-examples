require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'selenium-webdriver'
require 'melomel'

describe "HelloWorld", "#sayHello" do
  before do
    @driver = Selenium::WebDriver.for :chrome
    @driver.navigate.to "http://localhost:4567/hello.swf"
    Melomel.connect()
    @hello  = Melomel.find!('HelloWorld')
  end

  after do
    @driver.quit() unless @driver.nil?
  end
  
  it "equals 3 when adding 1 plus 2" do
    # Retrieve references to all the components
    first_name = Melomel.find_labeled!('spark.components.TextInput', 'First Name')
    last_name  = Melomel.find_labeled!('spark.components.TextInput', 'Last Name')
    message    = @hello.messageLabel
    button     = Melomel.find!('spark.components.Button', :label => 'Say Hello!')
    
    # Set first and last name text filed
    first_name.text = 'John'
    last_name.text  = 'Smith'
    
    # Click the 'Say Hello' button
    Melomel.click(button);
    
    # Verify that the message has been set
    message.text.should == 'Hello John Smith'
  end
end
