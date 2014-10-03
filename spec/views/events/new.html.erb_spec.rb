require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :name => "MyString",
      :title => "MyString",
      :description => "MyText",
      :image => "MyString",
      :status => nil
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "input#event_name[name=?]", "event[name]"
      assert_select "input#event_title[name=?]", "event[title]"
      assert_select "textarea#event_description[name=?]", "event[description]"
      assert_select "input#event_image[name=?]", "event[image]"
      assert_select "input#event_status[name=?]", "event[status]"
    end
  end
end
