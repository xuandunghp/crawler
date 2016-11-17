require "rails_helper"

SETTINGS = Settings.model.article

RSpec.describe Article do
  it { should validate_length_of(:title).is_at_most(SETTINGS.title_max_length) }

  describe ".test" do
    it "return 1" do
      # article = Article.new
      expect(Article.test).to eq 1
    end
  end
end
