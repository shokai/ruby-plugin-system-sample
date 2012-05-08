#!/usr/bin/env ruby

class String

  def method_missing(name, *args)
    plugin = "#{File.dirname(__FILE__)}/plugins/#{name}.rb"
    unless File.exists? plugin
      raise NoMethodError, "undefined method `#{name}' for \"#{self}\":#{self.class}"
    end
    instance_eval open(plugin).read
  end
  
end


"hello".print
"hello".say
"hello".sinu
"hello".error
