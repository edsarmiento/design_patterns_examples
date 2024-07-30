require 'net/http'
require 'json'

def fetch_data(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

def calculate_average_age_by_house(wizards)
  # Group wizards by house and calculate average age
  house_ages = wizards.group_by { |wizard| wizard['house'] }
                      .reject { |house, _| house.nil? || house.empty? }
                      .map do |house, wizards|
                        average_age = wizards.map { |w| w['age'].to_f }.reduce(:+) / wizards.size
                        { 'house' => house, 'average_age' => average_age.round }
                      end
  house_ages
end

# Main execution
url = 'https://coderbyte.com/api/challenges/json/wizard-list'
wizards = fetch_data(url)
average_age_by_house = calculate_average_age_by_house(wizards)
output = JSON.pretty_generate(average_age_by_house)

puts output
