# require modules here
require "yaml"

def load_library(file)
  # code goes here
  parse_file = YAML.load_file(file)
  parsed_hash = {get_meaning: {}, get_emoticon: {}}
  #keys = parse_file.keys
  
  parse_file.each do |meaning|
    parsed_hash[:get_meaning][meaning[1][1]] = meaning[0].to_s
    parsed_hash[:get_emoticon][meaning[1][0]] = meaning[1][1]
  end
  
  parsed_hash
end

def get_japanese_emoticon(file, eng_emo)
  # code goes here
  lookup = load_library(file)[:get_emoticon][eng_emo]
  result = nil
  if lookup then
    result = lookup else
    result = "Sorry, that emoticon was not found"
  end
  result
end

def get_english_meaning(file, jap_emo)
  # code goes here
  lookup = load_library(file)[:get_emoticon]
  result = nil
  keys = get_emoticon.keys
  i = 0
  
  while i < keys.length do
    result = keys[i] if lookup[keys[i]] = jap_emo
    i += 1
  end
  result = "Sorry, that emoticon was not found" if !result
  result
end