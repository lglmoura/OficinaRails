require 'spec_helper'

describe "mecanicos/show" do
  before(:each) do
    @mecanico = assign(:mecanico, stub_model(Mecanico,
      :matricula => "Matricula",
      :nome => "Nome",
      :funcao => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Matricula/)
    rendered.should match(/Nome/)
    rendered.should match(//)
  end
end
