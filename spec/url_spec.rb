require 'rails_helper'

# All of these should pass
RSpec.describe "posts", type: :feature do
  it "routes" do
    visit "/posts"
    expect(page).to have_content("lvh.me")
  end
end

RSpec.describe "posts", type: :request do
  it "works" do
    expect(posts_url).to include("lvh.me")
  end
end

RSpec.describe PostsController, type: :controller do
  it "works" do
    expect(posts_url).not_to include("lvh.me")
  end
end
