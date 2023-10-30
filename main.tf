resource "newrelic_service_level" "my_servicelevel" {
    guid = "NDA0Mzc0NnxCUk9XU0VSfEFQUExJQ0FUSU9OfDYwMTQyNDgxOQ"
    name = "Latency_my_app"
    description = "Proportion of requests that are served faster than a threshold."

    events {
        account_id = **** 
        valid_events {
            from = "Transaction"
            where = "appName = 'Example application' AND (transactionType='Web')"
        }
        bad_events {
            from = "Transaction"
            where = "appName = 'Example application' AND (transactionType= 'Web') AND duration < 0.1"
        }
    }

    objective {
        target = 99.00
        time_window {
            rolling {
                count = 7
                unit = "DAY"
            }
        }
    }
}