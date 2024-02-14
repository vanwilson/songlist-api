require "test_helper"

class SonglistsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/songlists.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Songlist.count, data.length
  end

  test "create" do
    assert_difference "Songlist.count", 1 do
      post "/songlists.json", params: { user_id: 1, title: "Hope", for_date: "03.04.24" }
      assert_response 200
    end
  end

  test "show" do
    get "/songlists/#{Songlist.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "user_id", "title", "for_date", "created_at", "updated_at"], data.keys
  end
end
