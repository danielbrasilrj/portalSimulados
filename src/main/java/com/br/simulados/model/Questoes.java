package com.br.simulados.model;

import java.util.List;

/**
 * Created by Jonatas Rodrigues on 04/06/2015.
 */
public class Questoes {

    private Integer idQuestao;
    private String descricaoQuestao;
    private List<Respostas> listaRespostas;

    public Integer getIdQuestao() {
        return idQuestao;
    }

    public void setIdQuestao(Integer idQuestao) {
        this.idQuestao = idQuestao;
    }

    public String getDescricaoQuestao() {
        return descricaoQuestao;
    }

    public void setDescricaoQuestao(String descricaoQuestao) {
        this.descricaoQuestao = descricaoQuestao;
    }

    public List<Respostas> getListaRespostas() {
        return listaRespostas;
    }

    public void setListaRespostas(List<Respostas> listaRespostas) {
        this.listaRespostas = listaRespostas;
    }
}
