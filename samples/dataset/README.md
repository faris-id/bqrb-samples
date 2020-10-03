# Dataset

According to the documentation ([Link](https://cloud.google.com/bigquery/docs/datasets-intro)):
```
Datasets are top-level containers that are used to organize and control access to your tables and views. A table or view must belong to a dataset, so you need to create at least one dataset before loading data into BigQuery.
```

So, before we can explore the feature and the capability of Google BigQuery, we must create at least one dataset.

In this directory, you can find a collection of scripts written in Ruby that is related to an operation to dataset. Hopefully this can help you to fulfill your needed.

# List of examples

## Creating Dataset in A Specific Region

To create a dataset in a specific region, `google-cloud-bigquery` library provide a `location` option in the `create_dataset` method. The list of values that can be passed to that option is listed in here: [GCP Location](https://cloud.google.com/bigquery/docs/locations)

Here's the usage example:

```ruby
require "google/cloud/bigquery"

bigquery = Google::Cloud::Bigquery.new
dataset = bigquery.create_dataset "dataset1", location: 'asia-southeast2'
```

You can take a look into the `create_dataset_in_specific_location.rb` script for the full working, ready-to-execute, sample.

This is the result when the `create_dataset_in_specific_location.rb` script is executed: 

<img width="1680" alt="image" src="https://user-images.githubusercontent.com/19619603/94984736-a60d4000-0579-11eb-8dc2-983644a4ee58.png">

Read the README.md file in the root directory of this project to find the guide on how to set up the configuration and execute a sample script in this project.
