require 'spec_helper'

describe LayoutHelper do
  describe 'title' do
    it "should set show title" do
      helper.title('nice seo title').should be_true
      helper.show_title?.should be_true

      helper.title('nice seo title', false).should be_false
      helper.show_title?.should be_false
    end

    it "should set the content title" do
      title = 'my great title'
      helper.title(title)

      helper.content_for(:title).should == title
    end
  end
end