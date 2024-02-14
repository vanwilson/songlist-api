require "test_helper"

class SonglistsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/songlists.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Songlist.count, data.length
  end
end
