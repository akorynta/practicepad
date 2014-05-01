require 'spec_helper'

describe "logs/new" do
  before(:each) do
    assign(:log, stub_model(Log,
      :user_id => 1,
      :description => "MyText",
      :title => "MyString"
    ).as_new_record)
  end

  it "renders new log form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", logs_path, "post" do
      assert_select "input#log_user_id[name=?]", "log[user_id]"
      assert_select "textarea#log_description[name=?]", "log[description]"
      assert_select "input#log_title[name=?]", "log[title]"
    end
  end
end
