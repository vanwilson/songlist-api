require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/songs.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Song.count, data.length
  end

  test "create" do
    assert_difference "Song.count", 1 do
      post "/songs.json", params: { title: "title", stanza: "stanza", chorus: "chorus", key: "A" }
      assert_response 200
    end

    test "show" do
      get "/songs/#{Song.first.id}.json"
      assert_response 200

      data = JSON.parse(response.body)
      assert_equal ["id", "title", "stanza", "chorus", "key"], data.keys
    end
  end
end
