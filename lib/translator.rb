# require modules here
require "yaml"

def load_library(file)
  # code goes here
  parse_file = YAML.load_file(file)
  parsed_hash = {}
  
  parse_file.each do |meaning|
    parsed_hash[:get_meaning] = {meaning[0] => meaning.toS}
    
  end
  parsed_hash
end

def get_japanese_emoticon
  # code goes here
  
end

def get_english_meaning
  # code goes here
end