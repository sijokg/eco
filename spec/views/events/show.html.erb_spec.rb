require 'spec_helper'

describe "events/show" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :name => "Name",
      :title => "Title",
      :description => "MyText",
      :image => "Image",
      :status => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(//)
  end
end
