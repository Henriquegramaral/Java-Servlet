package models;

public class Carro {
	private String nome;
	private String marca;
	public Integer getFllocado() {
		return fllocado;
	}
	public void setFllocado(Integer fllocado) {
		this.fllocado = fllocado;
	}
	private String modelo;
	private Float preco;
	private Float locacao;
	private Integer fllocado;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public Float getPreco() {
		return preco;
	}
	public void setPreco(Float preco) {
		this.preco = preco;
	}
	public Float getLocacao() {
		return locacao;
	}
	public void setLocacao(Float locacao) {
		this.locacao = locacao;
	}

}
