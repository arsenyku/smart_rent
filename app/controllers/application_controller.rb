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
      start_date: 'Jan. 3rd, 2017',
      end_date: 'Jan. 3rd, 2018',
      rent: 1000,
      late_fee: 100,
      deposit: 500
    }
    render json: value
  end

  def payment
    payment = payment_data
    render json: payment
  end

  def make_payment
    payment_data(params[:amount].to_i)
    value = {
      the_parameter_you_sent_me: params[:amount]
    }
    render json: payment_data
  end

  def terminate
    termination = {
      contract: {
        payment_day: 1,
        start_date: 'Jan. 3rd, 2017',
        end_date: 'Jan. 3rd, 2018',
        rent: 1000,
        late_fee: 100,
        deposit: 500
      }
    }
    render json: termination
  end

  private

  def payment_data(id = 1, amount=0)
    amount ? amount = amount : amount = 0
    payment = {
      contract: {
        payment_day: 1,
        start_date: 'Jan. 3rd, 2017',
        end_date: 'Jan. 3rd, 2018',
        rent: 1000,
        late_fee: 100,
        deposit: 500
      },
      id: 1,
      date: 'Feb. 1st, 2017',
      balance: 0 + amount,
      payment: 1000
    }
  end
end
