require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject(:comment) { build :comment }

  describe 'validations' do
    it { should belong_to(:article) }
  end
end
