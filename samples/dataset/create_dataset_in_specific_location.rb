# frozen_string_literal: true

require 'dotenv'
require 'google/cloud/bigquery'

Dotenv.load

Google::Cloud::Bigquery.configure do |config|
  config.project_id  = ENV['GCP_PROJECT_ID']
  config.credentials = 'config/service_account.json'
end

bigquery = Google::Cloud::Bigquery.new

# In this example, the dataset id to be created is `dataset1` and the location
# is located in Jakarta, `asia-southeast2`
dataset_id = 'dataset1'
location = 'asia-southeast2'

# The following code creates a dataset located in the location defined above.
# This is done by adding an option `location` when calling the method `create_dataset`
# Full list of available location is documented in here: https://cloud.google.com/bigquery/docs/locations
bigquery.create_dataset(dataset_id, location: location)

puts "Created dataset: #{dataset_id}"
