require 'rails_helper'

describe LayoutHelper do
  describe 'title' do
    it 'sets show title' do
      expect(helper.title('nice seo title')).to be_truthy
      expect(helper.show_title?).to be_truthy

      expect(helper.title('nice seo title', false)).to be_falsey
      expect(helper.show_title?).to be_falsey
    end

    it 'sets the content title' do
      title = 'my great title'
      helper.title(title)

      expect(helper.content_for(:title)).to eq(title)
    end
  end
end