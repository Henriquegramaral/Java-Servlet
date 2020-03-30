package models;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Locacao {
	private Integer fldevolvido;
	public Integer getFldevolvido() {
		return fldevolvido;
	}
	public void setFldevolvido(Integer fldevolvido) {
		this.fldevolvido = fldevolvido;
	}
	private String usuario;
	private String carro;
	private Date data;
	private Date dataestimada;
	private Date datadevolucao;
	private Float valorcobrado;
	private Float valorpago;
	private Float valormulta;
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getCarro() {
		return carro;
	}
	public void setCarro(String carro) {
		this.carro = carro;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public Date getDataestimada() {
		return dataestimada;
	}
	public void setDataestimada(Date dataestimada) {
		this.dataestimada = dataestimada;
	}
	public Date getDatadevolucao() {
		return datadevolucao;
	}
	public void setDatadevolucao(Date datadevolucao) {
		this.datadevolucao = datadevolucao;
	}
	public Float getValorcobrado() {
		return valorcobrado;
	}
	public void setValorcobrado(Float valorcobrado) {
		this.valorcobrado = valorcobrado;
	}
	public Float getValorpago() {
		return valorpago;
	}
	public void setValorpago(Float valorpago) {
		this.valorpago = valorpago;
	}
	public Float getValormulta() {
		return valormulta;
	}
	public void setValormulta(Float valormulta) {
		this.valormulta = valormulta;
	}
	
	public String getDataLocacaoString()
	{
		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
		return formato.format(getData());
	}
	
	public String getDataEstimadaString()
	{
		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
		return formato.format(getDataestimada());
	}
	
	public String getDataDevolucaoString()
	{
		SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
		return formato.format(getDatadevolucao());
	}

}
