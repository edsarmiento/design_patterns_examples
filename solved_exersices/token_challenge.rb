require 'net/http'
require 'json'

def fetch_data(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

def count_ages(data)
  count = 0
  items = data.split(', ')
  items.each do |item|
    if item.start_with?('age=')
      age = item.split('=')[1].to_i
      count += 1 if age >= 50
    end
  end
  count
end

def process_output(count, challenge_token)
  final_string = "#{count}#{challenge_token}"
  result = final_string.chars.map.with_index do |char, index|
    (index + 1) % 3 == 0 ? 'X' : char
  end.join
end

# Main execution
url = 'https://coderbyte.com/api/challenges/json/age-counting'
challenge_token = 'e1jdpkvh34b'

data = fetch_data(url)['data']
count = count_ages(data)
output = process_output(count, challenge_token)

puts output
