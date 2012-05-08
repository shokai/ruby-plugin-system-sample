#!/usr/bin/env ruby

class String

  def method_missing(name, *args)
    code = open("#{File.dirname(__FILE__)}/plugins/#{name}.rb").read
    instance_eval code
  end
  
end


"hello".print
"hello".say
