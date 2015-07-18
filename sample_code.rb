# Sample taking advantage of single responsibility classes

module FileModifier
require 'thor'	

  class Append < Thor
    include Thor::append

    desc "Appends", "It appends a string to a file"
    def append_to_file(file_name, string_to_append)
      # To do
    end	
  end

  class Insert < Thor
    include Thor::Actions

    desc "Inserts", "It inserts a string to a file"
    def insert_string(file_name, string_to_insert, where_to_insert)
      # To do
    end
  end

  class Replace < Thor
  	include Thor::Actions

  	desc "Replaces", "It replaces a string with another string"
  	def replace_string(file_name, find_string, replace_string)
  	  # To do
  	end
  end	

  # How I would have done it before reading POODR and a
  # few other resources, e.g. Thoughtbot articles, StackOverflow
  class FileModifier < Thor
    include Thor::Actions
    
    attr_reader :file_name, :string, :position
    def initialize(*args)
      @file_name 		= args[:file_name]
      @string_to_insert = args[:string_to_insert]
      @position			= args[:position]
    end
    	
    desc "Appends", "It appends a string to a file"
    def append_to_file(file_name, string_to_append)
      # To do	
    end	

    ddesc "Inserts", "It inserts a string to a file"
    def insert_string(file_name, string_to_insert, where_to_insert)
      # To do
    end

    desc "Inserts", "It replaces a string with another"
  	def replace_string(file_name, find_string, replace_string)
  	  # To do
  	end
  end
end

# I intend to refactor the actions (append, insert, replace),
# in a future iteration. I may decide to remove the dependency on Thor altogether,
# I also intend to add other actions. The FileModifier class will affect
# classes that depend on it more drastically than my single responsibility 
# action classes
