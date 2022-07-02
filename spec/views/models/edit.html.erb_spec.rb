require 'rails_helper'

RSpec.describe "models/edit", type: :view do
  before(:each) do
    @model = assign(:model, Model.create!(
      name: "MyString",
      mail: "MyString",
      book: nil
    ))
  end

  it "renders the edit model form" do
    render

    assert_select "form[action=?][method=?]", model_path(@model), "post" do

      assert_select "input[name=?]", "model[name]"

      assert_select "input[name=?]", "model[mail]"

      assert_select "input[name=?]", "model[book_id]"
    end
  end
end
