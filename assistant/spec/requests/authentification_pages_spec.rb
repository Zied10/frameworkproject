require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_content('Connexion') }
    it { should have_title('Connexion') }
  end
  describe "signin" do
    before { visit signin_path }

    describe "with invalid information" do
      before { click_button "Connexion" }

      it { should have_title('Connexion') }
      it { should have_selector('div.alert.alert-error') }
      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-error') }
      end
    end
    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Name",    with: user.name.upcase
        fill_in "Password", with: user.password
        click_button "Connexion"
      end

      it { should have_title(user.name) }
      it { should have_link('Profil',     href: user_path(user)) }
      it { should have_link('Deconnexion',    href: signout_path) }
      it { should_not have_link('Connexion', href: signin_path) }
      describe "followed by signout" do
        before { click_link "Deconnexion" }
        it { should have_link('Connexion') }
      end
    end
  end
end
