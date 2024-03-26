# frozen_string_literal: true

RSpec.describe "Metrics", type: :request do
  it "is OK" do
    get "/hello/world"

    # Generate new action via:
    #   `bundle exec hanami generate action home.index --url=/`
    expect(last_response.status).to be(200)
  end

  it "returns Hello World! in the body" do
    get "/hello/world"

    expect(last_response.body).to eq("Hello World!")
  end

  it "increments counters for every request" do
    expect { get "/hello/world" }.to \
      increment_yabeda_counter(Yabeda.hanami.requests_total)
      .with_tags(controller: "hello", action: "world", status: 200, method: "get", format: :html)
      .by(1)
  end
end
