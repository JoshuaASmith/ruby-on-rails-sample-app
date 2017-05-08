require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    describe "after saving the user" do
      before { click_button submit }
      let(:user) { User.find_by(email: 'user@example.com') }

      it { should have_link('Sign out') }
      it { should have_title(user.name) }
      it { should have_selector('div.alert.alert-success', text: 'Welcome') }
    end
  end
end
