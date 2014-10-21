# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "Marketing" do
    describe "contacts" do

      describe "contact list" do
        before(:each) do
          FactoryGirl.create(:contact, name: 'Unique Name 1')
          FactoryGirl.create(:contact, name: 'Unique Name 2')
        end

        it "displays a list of contacts" do
          visit refinery.marketing_contacts_path
          page.should have_content("Unique Name 1")
          page.should have_content("Unique Name 2")
        end

      end

      describe "contact details" do
        let(:contact) { FactoryGirl.create(:contact) }

        it "displays the details of a specific contact" do
          visit refinery.marketing_contact_path(contact)
          page.should have_content(contact.name)
          page.should have_content(contact.email)
        end

      end

    end
  end
end
