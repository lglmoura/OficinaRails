# coding: utf-8

require 'spec_helper'

feature 'gerenciar mecanico' do

  scenario 'incluir mecanico' do #, :javascript => true  do

    funcao = FactoryGirl.create(:funcao, :nome => 'XXX')

    visit new_mecanico_path

    preencher_e_verificar_mecanico

    

  end


  def preencher_e_verificar_mecanico

    fill_in 'Matricula',  :with => "12345"
    fill_in 'Nome', :with => 'Luiz'
    
    select 'XXX', :on => 'Função'
    
    click_button 'Salvar'
    page.should have_content 'Matricula: 12345'
    page.should have_content 'Nome: Luiz'
    page.should have_content 'Função: XXX'
    
  end

      

end
