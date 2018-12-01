require 'httparty'
toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
# puts toronto_wards_response
toronto_wards_json = JSON.parse(toronto_wards_response.body)
# puts toronto_wards_json
toronto_wards_json_obj = toronto_wards_json["objects"]

def output_names(array)
  array.map do |obj|
    obj["name"]
  end
end

puts output_names(toronto_wards_json_obj)
