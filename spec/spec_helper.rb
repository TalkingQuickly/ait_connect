require 'rubygems'
require 'bundler/setup'

require 'ait_connect' # and any other gems you need

RSpec.configure do |config|
  # some (optional) config here
  
  def invalid_api_client
    ActiveInTime::Base.new("bollocks key","pizza is goood")
  end
  
  def valid_api_client
    #ActiveInTime::Base.new("EvVqRnFW4R53IUvcjP4uPjXzaQxNhNMCMZ2G5j5l","iE8iBM7tVXGlqF179qdr7UWhyPFIBROQ2tjtmE8M") #production
    ActiveInTime::Base.new("UgMivQQWXNiTpfMNl5nNzWz9nj9jQF7TjZnRgDES","tWqe4qyXwsrift4wJqDDHY5MqV8TU2bpy9pTGGEX") #localhost
    
  end
  
end