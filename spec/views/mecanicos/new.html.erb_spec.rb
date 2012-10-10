require 'spec_helper'

describe "mecanicos/new" do
  before(:each) do
    assign(:mecanico, stub_model(Mecanico,
      :matricula => "MyString",
      :nome => "MyString",
      :funcao => nil
    ).as_new_record)
  end

  it "renders new mecanico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mecanicos_path, :method => "post" do
      assert_select "input#mecanico_matricula", :name => "mecanico[matricula]"
      assert_select "input#mecanico_nome", :name => "mecanico[nome]"
      assert_select "input#mecanico_funcao", :name => "mecanico[funcao]"
    end
  end
end
