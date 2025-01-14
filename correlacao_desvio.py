# -*- coding: utf-8 -*-

#Importação das bibliotecas
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
import scipy as sp


#Extraindo os dados
dados = pd.read_csv("/content/AbandonoEscolar_RendaMedia_2013_2023.csv")

#limpando os dados
dados_fill = dados.fillna(dados["Taxa_Abandono"].median())

#Limpando dados para realizar teste de senbilidade com o método fillna
dados_limpo = dados.dropna()

print(dados["Taxa_Abandono"])

#Realizando o cálculo do cv da taxa de abandono
media_taxa = np.mean(dados_limpo["Taxa_Abandono"])
desvio_taxa = np.std(dados_limpo["Taxa_Abandono"])
coeficiente_variacao_taxa = (desvio_taxa / media_taxa) *100
print(coeficiente_variacao_taxa)


#Realizando o cálulo do cv da renda média
media_renda = np.mean(dados_limpo["Renda_Media"])
desvio_renda = np.std(dados_limpo["Renda_Media"])
coeficiente_variacao_renda = (desvio_renda / media_renda) *100
print(coeficiente_variacao_renda)


#Fazendo o boxplot da taxa de abandono
lista = [x for x in dados_limpo["Taxa_Abandono"] if x <= 100.0]
plt.boxplot(lista, patch_artist=True)
plt.ylim(0, 100.0)
plt.ylabel("Taxa de Abandono")
plt.title("Boxplot da Taxa de Abandono",fontsize=10)
plt.show()

#Pegando todos os dados (a renda máxima é 5500) para realizar a fórmula da correlação
dados5500 = dados[dados["Renda_Media"] <= 5500.0]
dados5500

#Fazendo a correlação de Pearson para comparar o valor com Spearman
corr = dados5500["Renda_Media"].corr(dados5500["Taxa_Abandono"])
print(corr)

#Fazendo o boxplot da Renda média
plt.boxplot(dados_limpo["Renda_Media"])
plt.ylabel("Renda Média")
plt.title("Boxplot da Renda Média", fontsize=10)
plt.savefig("boxplot_renda.png")
plt.show()

#Fazendo a correlação  de Spearman com os dados limpos por diferentes métodos para entender o impacto na correlação 
corrS = sp.stats.spearmanr(dados_limpo["Taxa_Abandono"], dados_limpo["Renda_Media"])
print(corrS)

corr = sp.stats.spearmanr(dados_fill["Taxa_Abandono"], dados_fill["Renda_Media"])
print(corr)

#Verificando a renda mínima
dados["Renda_Media"].min()

#Fazendo o gráfico de dispersão entre Renda média e Taxa de Abandono
plt.scatter(dados_limpo["Renda_Media"], dados_limpo["Taxa_Abandono"], color='blue', label='Pontos')
plt.xlabel("Renda Média")
plt.ylabel("Taxa de Abandono")
plt.title("Relação entre Renda Média e Taxa de Abandono")
plt.show()


#Fazendo o gráfico de dispersão mas com as colunas invertidas
plt.scatter(dados_limpo["Taxa_Abandono"], dados_limpo["Renda_Media"], color='blue', label='Pontos')
plt.show()
