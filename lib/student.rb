require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'

class Student < InteractiveRecord

  def initialize(options = {})
    options.each do |column, value|
      self.send("#{column}=", value)
    end
  end

end
