require 'spec_helper'

describe "mecanicos/edit" do
  before(:each) do
    @mecanico = assign(:mecanico, stub_model(Mecanico,
      :matricula => "MyString",
      :nome => "MyString",
      :funcao => nil
    ))
  end

  it "renders the edit mecanico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mecanicos_path(@mecanico), :method => "post" do
      assert_select "input#mecanico_matricula", :name => "mecanico[matricula]"
      assert_select "input#mecanico_nome", :name => "mecanico[nome]"
      assert_select "input#mecanico_funcao", :name => "mecanico[funcao]"
    end
  end
end
