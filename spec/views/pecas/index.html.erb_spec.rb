require 'spec_helper'

describe "pecas/index" do
  before(:each) do
    assign(:pecas, [
      stub_model(Peca,
        :nome => "Nome",
        :descricao => "Descricao",
        :fabricante => "Fabricante",
        :valor => 1.5,
        :quantidade => 1
      ),
      stub_model(Peca,
        :nome => "Nome",
        :descricao => "Descricao",
        :fabricante => "Fabricante",
        :valor => 1.5,
        :quantidade => 1
      )
    ])
  end

  it "renders a list of pecas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Fabricante".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
