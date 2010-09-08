When /^I click the "([^"]*)" button$/ do |label|
  button = Melomel.find('spark.components.Button', :label => label)
  button.should_not be_nil
  Melomel.click(button)
end

Then /^the display should show "([^"]*)"$/ do |text|
  display = Melomel.find('spark.components.TextInput', :id => 'display')
  display.text.should == text
end