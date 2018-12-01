require 'httparty'

elections_response = HTTParty.get('https://represent.opennorth.ca/elections/')
elections_json = JSON.parse(elections_response)
elections_json_obj = elections_json["objects"]

def output_elections(array)
  array.map do |obj|
    obj["data_url"]
  end
end

puts output_elections(elections_json_obj)
