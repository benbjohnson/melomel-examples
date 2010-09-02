#!/usr/bin/ruby
require 'rubygems'
require "bundler/setup"
require 'sinatra'
require File.dirname(__FILE__) + '/../lib/flash'

set :public, File.dirname(__FILE__)

get '/' do
  embed_flash('calc.swf', 500, 400)
end