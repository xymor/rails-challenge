require 'rails_helper'

RSpec.describe "pictures/show", :type => :view do
  before(:each) do
    @picture = assign(:picture, Picture.create!(
      :title => "Title",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
  end
end
