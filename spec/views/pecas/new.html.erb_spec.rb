require 'spec_helper'

describe "pecas/new" do
  before(:each) do
    assign(:peca, stub_model(Peca,
      :nome => "MyString",
      :descricao => "MyString",
      :fabricante => "MyString",
      :valor => 1.5,
      :quantidade => 1
    ).as_new_record)
  end

  it "renders new peca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pecas_path, :method => "post" do
      assert_select "input#peca_nome", :name => "peca[nome]"
      assert_select "input#peca_descricao", :name => "peca[descricao]"
      assert_select "input#peca_fabricante", :name => "peca[fabricante]"
      assert_select "input#peca_valor", :name => "peca[valor]"
      assert_select "input#peca_quantidade", :name => "peca[quantidade]"
    end
  end
end
