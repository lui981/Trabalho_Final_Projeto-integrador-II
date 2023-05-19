require "application_system_test_case"

class MedicamentosTest < ApplicationSystemTestCase
  setup do
    @medicamento = medicamentos(:one)
  end

  test "visiting the index" do
    visit medicamentos_url
    assert_selector "h1", text: "Medicamentos"
  end

  test "creating a Medicamento" do
    visit medicamentos_url
    click_on "New Medicamento"

    fill_in "Data validade", with: @medicamento.data_validade
    fill_in "Estoque", with: @medicamento.estoque
    fill_in "Fornecedor", with: @medicamento.fornecedor_id
    fill_in "Nome", with: @medicamento.nome
    fill_in "Preco", with: @medicamento.preco
    fill_in "Quantidade", with: @medicamento.quantidade
    fill_in "Tipo", with: @medicamento.tipo
    click_on "Create Medicamento"

    assert_text "Medicamento was successfully created"
    click_on "Back"
  end

  test "updating a Medicamento" do
    visit medicamentos_url
    click_on "Edit", match: :first

    fill_in "Data validade", with: @medicamento.data_validade
    fill_in "Estoque", with: @medicamento.estoque
    fill_in "Fornecedor", with: @medicamento.fornecedor_id
    fill_in "Nome", with: @medicamento.nome
    fill_in "Preco", with: @medicamento.preco
    fill_in "Quantidade", with: @medicamento.quantidade
    fill_in "Tipo", with: @medicamento.tipo
    click_on "Update Medicamento"

    assert_text "Medicamento was successfully updated"
    click_on "Back"
  end

  test "destroying a Medicamento" do
    visit medicamentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medicamento was successfully destroyed"
  end
end
