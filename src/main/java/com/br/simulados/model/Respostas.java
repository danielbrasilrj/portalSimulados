package com.br.simulados.model;

/**
 * Created by Jonatas Rodrigues on 04/06/2015.
 */
public class Respostas {
    private Integer idResposta;
    private String descricao;
    private boolean isCorreta;

    public Integer getIdResposta() {
        return idResposta;
    }

    public void setIdResposta(Integer idResposta) {
        this.idResposta = idResposta;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public boolean isCorreta() {
        return isCorreta;
    }

    public void setCorreta(boolean isCorreta) {
        this.isCorreta = isCorreta;
    }
}
