# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :peca do
    nome "MyString"
    descricao "MyString"
    fabricante "MyString"
    valor 1.5
    quantidade 1
  end
end
