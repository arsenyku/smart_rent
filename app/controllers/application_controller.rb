class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def helloworld
    value = { helloworld: "Hello, world!" }
    render json: value
  end

  def history
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
            "response_time": null,
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
end
