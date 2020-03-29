# require modules here
require "yaml"

def load_library(file)
  # code goes here
  parse_file = YAML.load_file(file)
  parsed_hash = {}
  
  parse_file.each do |meaning|
    parsed_hash[:get_meaning] = {meaning[1] => meaning.to_s}
    parsed_hash[:get_emoticon] = {meaning[0] => meaning[1]}
  end
  parsed_hash
end

def get_japanese_emoticon(file, eng_emo)
  # code goes here
  lookup = load_library(file)[eng_emo]
  result = nil
  if lookup then
    result = lookup else
    reult =
end

def get_english_meaning
  # code goes here
end