class RelatorioPdf < Prawn::Document
    def initialize(dados, view)
      super(top_margin: 10)
      @dados = dados
      @view = view
      printPdf
    end
  
    def printPdf 
      horaAtual = Time.now
      text "#{horaAtual.strftime("%d/%m/%Y - %H:%M ")}", align: :right, cell_style: { font: "Courier" }, size: 7
      move_down 5
      text "Relatório de Produto", align: :center, style: :bold, font: "Courier", size: 10
      table tabelacabecalho, cell_style: { font: "Courier", size: 10 } do
        column(0).width = 40
        column(0).font_style = :bold
        column(1).width = 100
        column(0).font_style = :bold
        column(2).width = 60
        column(0).font_style = :bold
        column(3).width = 50
        column(0).font_style = :bold
        column(4).width = 60
        column(0).font_style = :bold
        column(5).width = 60
        column(0).font_style = :bold
        column(6).width = 80
        column(0).font_style = :bold
        column(7).width = 90
        column(0).font_style = :bold
      end
      @dados.each do |dado|
        table tabeladados(dado), cell_style: { font: "Courier", size: 10 } do
          column(0).width = 40
          column(0).font_style = :bold
          column(1).width = 100
          column(2).width = 60
          column(3).width = 50
          column(4).width = 60
          column(5).width = 60
          column(6).width = 80
          column(7).width = 90
        end
      end
    end
  
    def tabelacabecalho
      [["Cod", "Nome", "Tipo", "Qtd", "Estoque", "Preço", "Data de Validade", "Fornecedor"]]
    end 
  
    def tabeladados(dado)
      [[dado.id.to_s, dado.nome, dado.tipo, dado.quantidade, dado.estoque, floatMoney(dado.preco), dado.data_validade.strftime("%d/%m/%Y"), dado.fornecedor.nome]]
    end 
  
    def floatMoney(valor)
      valor = sprintf('%.2f', valor).to_s
      valor = valor.gsub('.', ',')
      return valor
    end
  end
  
  