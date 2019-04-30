require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :title => "MyString",
      :summary => "MyText",
      :image => "MyString",
      :tech => "MyText",
      :comments => "MyText"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[title]"

      assert_select "textarea[name=?]", "project[summary]"

      assert_select "input[name=?]", "project[image]"

      assert_select "textarea[name=?]", "project[tech]"

      assert_select "textarea[name=?]", "project[comments]"
    end
  end
end
