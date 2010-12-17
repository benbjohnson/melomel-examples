require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'cucumber'
require 'melomel'

Before do |scenario|
  start_runner()
  Melomel.connect()
end

After do |scenario|
  stop_runner()
end

def start_runner
  raise 'FLEX_HOME environment variable must be set' if ENV['FLEX_HOME'].nil?

  # Open up the sandbox
  @pid = fork do
    exec("#{ENV['FLEX_HOME']}/bin/adl Calc-app.xml")
  end
  Process.detach(@pid)
end

def stop_runner
  Process.kill('KILL', @pid)
end