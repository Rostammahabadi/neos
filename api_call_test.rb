require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require_relative 'api_call'

class ApiCallTest < Minitest::Test
  def test_it_can_return_inputted_values
    new_call = ApiCall.new
    results = new_call.get_data_from_nasa_api("2012-01-01",'https://api.nasa.gov', '12345')

    assert_equal "2012-01-01", results.params[:start_date]
    assert_instance_of URI::HTTPS, results.url_prefix
    assert_equal '12345', results.params[:api_key]
  end

end
