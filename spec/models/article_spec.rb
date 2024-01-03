require 'rails_helper'

RSpec.describe Article, type: :model do
  subject(:article) { build :article }

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }

    it { should validate_length_of(:body).is_at_least(10) }
    it { should validate_uniqueness_of(:title).case_insensitive }
  end
end
