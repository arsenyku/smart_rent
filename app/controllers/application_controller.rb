class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def helloworld
    value = { helloworld: "Hello, world!" }
    render json: value
  end

  def property_history
    render json: {
      "property1": {
        "tenant": "Joe Schmoe",
        "duration_of_lease": 4,
        "requisitions": {
          "req1": {
            "issue": "plumbing",
            "response_time": 5,
            "resolved": true
          },
          "req2": {
            "issue": "roaches",
            "response_time": 100,
            "resolved": false
          },
          "req3": {
            "issue": "nachos",
            "response_time": 1,
            "resolved": true
          }
        }
      },
      "property2": {
        "tenant": "Lisa Simpson",
        "duration_of_lease": 12,
        "requisitions": {
          "req1": {
            "issue": "snow removal",
            "response_time": 1,
            "resolved": true
          },
          "req2": {
            "issue": "snow removal",
            "response_time": 2,
            "resolved": true
          }
        }
      },
      "property3": {
        "tenant": "Sarah Foot",
        "duration_of_lease": 0,
        "requisitions": {}
      }
    }
  end

  def contract
    value = {
      payment_day: 1,
      start_date: 'some date format',
      end_date: 'some date format',
      rent: 1000,
      late_fee: 100,
      deposit: 500
    }
    render json: value
  end

  def payment
    payment = {
      contract: {
        payment_day: 1,
        start_date: 'some date format',
        end_date: 'some date format',
        rent: 1000,
        late_fee: 100,
        deposit: 500
      },
      date: 'some date format',
      balance: 1000
    }
    render json: payment
  end

  def terminate
    termination = {
      contract: {
        payment_day: 1,
        start_date: 'some date format',
        end_date: 'some date format',
        rent: 1000,
        late_fee: 100,
        deposit: 500
      }
    }
    render json: termination
  end
end
