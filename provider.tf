terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.27.4"
    }
  }
}

provider "newrelic" {
  account_id = ***

  api_key = "*****"
  region  = "US"
}