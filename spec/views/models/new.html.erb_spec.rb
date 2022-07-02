require 'rails_helper'

RSpec.describe "models/new", type: :view do
  before(:each) do
    assign(:model, Model.new(
      name: "MyString",
      mail: "MyString",
      book: nil
    ))
  end

  it "renders new model form" do
    render

    assert_select "form[action=?][method=?]", models_path, "post" do

      assert_select "input[name=?]", "model[name]"

      assert_select "input[name=?]", "model[mail]"

      assert_select "input[name=?]", "model[book_id]"
    end
  end
end
