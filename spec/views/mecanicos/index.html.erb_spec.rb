require 'spec_helper'

describe "mecanicos/index" do
  before(:each) do
    assign(:mecanicos, [
      stub_model(Mecanico,
        :matricula => "Matricula",
        :nome => "Nome",
        :funcao => nil
      ),
      stub_model(Mecanico,
        :matricula => "Matricula",
        :nome => "Nome",
        :funcao => nil
      )
    ])
  end

  it "renders a list of mecanicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Matricula".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
