# coding: utf-8

require 'spec_helper'

feature 'gerenciar peça' do

  scenario 'incluir peca' do # , :js => true  do

    visit new_peca_path

    preencher_e_verificar_peca

    

  end

  scenario 'alterar peca' do #, :js => true  do

    peca = FactoryGirl.create(:peca)

    visit edit_peca_path(peca)

    preencher_e_verificar_peca



  end

   scenario 'excluir peca' do #, :javascript => true  do

       funcao = FactoryGirl.create(:peca)

        visit pecas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_peca
     
      fill_in 'Nome',  :with => "vela"
      fill_in 'Descrição',  :with => "Vela de Ignição"
      fill_in 'Fabricante',  :with => "XXX"
      fill_in 'Valor unitario', :with => 3.0
      fill_in 'Quantidade' , :with => 300 	
   
 
      click_button 'Salvar'

      page.should have_content 'Nome: vela'
      page.should have_content 'Descrição: Vela de Ignição'
      page.should have_content 'Fabricante: XXX'
      page.should have_content 'Valor unitario: 3.0' 
      page.should have_content 'Quantidade: 300'
      

   end
end
