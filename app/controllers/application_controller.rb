class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def helloworld
    value = { helloworld: "Hello, world!" }
    render json: value
  end

  def property_history
    # @properties = Property.all
    # render json: 

    render json: {
      "1060 Homer Street": {
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
      "128 West Hastings Street": {
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
      "3111 Commercial Drive": {
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
    # payment = {
    #   contract: {
    #     payment_day: 1,
    #     start_date: 'Jan. 3rd, 2017',
    #     end_date: 'Jan. 3rd, 2018',
    #     rent: 1000,
    #     late_fee: 100,
    #     deposit: 500
    #   },
    #   date: 'Feb. 1st, 2017',
    #   balance: 1000,
    #   payment: 1000
    # }
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

  def payment_data(amount=0)
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
      date: 'Feb. 1st, 2017',
      balance: 1000 + amount,
      payment: 1000
    }
  end
end
