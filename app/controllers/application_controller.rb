class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def helloworld
    value = { helloworld: "Hello, world!" }
    render json: value
  end

  def property_history
    value = { blocklord: "Lord of the Blocks" }
    render json: value
  end

  def contract
    value = {
      payment_day: 1,
      start_date: 'some date format',
      end_date: 'some date format',
      rent: 1000,
      late_fee: 100
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
        late_fee: 100
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
        late_fee: 100
        deposit: 500
      }
    }
  end
end
