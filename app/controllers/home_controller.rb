require "net/http"
require "json"

class HomeController < ApplicationController
  # Definindo as moedas que serão usadas no dashboard
  CURRENCIES = [
    { code: "USD-BRL" }, # Dólar Americano para Real Brasileiro
    { code: "EUR-BRL" }, # Euro para Real Brasileiro
    { code: "BTC-BRL" }  # Bitcoin para Real Brasileiro
  ]

  def index
    # Inicializando a variável de instância @chart_data como um array vazio
    @chart_data = []

    # Iterando sobre cada moeda definida em CURRENCIES
    CURRENCIES.each do |currency|
      # Construindo a URL para a API, que retorna os dados de câmbio dos últimos 30 dias
      url = URI("https://economia.awesomeapi.com.br/json/daily/#{currency[:code]}/30")

      # Fazendo a requisição HTTP para obter os dados da API
      response = Net::HTTP.get(url)

      # Parsing (analisando) a resposta JSON da API
      data = JSON.parse(response)

      # Inicializando um hash para armazenar as taxas de câmbio com suas respectivas datas
      hash = {}

      # Iterando sobre cada entrada de dados retornada pela API
      data.each do |entry|
        # Formatando a data a partir do timestamp (em segundos) para o formato "dd/mm/yyyy"
        date = Time.at(entry["timestamp"].to_i).strftime("%d/%m/%Y")

        # Obtendo a taxa de câmbio mais alta do dia
        rate = entry["high"]

        # Adicionando a data e a taxa de câmbio ao hash
        hash[date] = rate
      end

      # Adicionando os dados processados da moeda ao array @chart_data
      @chart_data << { name: currency[:code], data: hash }
    end
  end
end
