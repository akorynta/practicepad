require 'spec_helper'

describe "logs/edit" do
  before(:each) do
    @log = assign(:log, stub_model(Log,
      :user_id => 1,
      :description => "MyText",
      :title => "MyString"
    ))
  end

  it "renders the edit log form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", log_path(@log), "post" do
      assert_select "input#log_user_id[name=?]", "log[user_id]"
      assert_select "textarea#log_description[name=?]", "log[description]"
      assert_select "input#log_title[name=?]", "log[title]"
    end
  end
end
