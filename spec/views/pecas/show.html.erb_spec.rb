require 'spec_helper'

describe "pecas/show" do
  before(:each) do
    @peca = assign(:peca, stub_model(Peca,
      :nome => "Nome",
      :descricao => "Descricao",
      :fabricante => "Fabricante",
      :valor => 1.5,
      :quantidade => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Descricao/)
    rendered.should match(/Fabricante/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
  end
end
