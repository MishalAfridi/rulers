require_relative "test_helper"

class TestApp < Rulers::Application

end

class RulersAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/test"

    assert last_response.ok?
    assert last_response.body.include?("Hello")

  end
end