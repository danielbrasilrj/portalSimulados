package br.com.simulados.controller;

import com.br.simulados.model.Questoes;
import com.br.simulados.model.Respostas;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Jonatas Rodrigues on 04/06/2015.
 */
@Controller
public class SimuladosController {

    List<Questoes> listaQuestao;


    @RequestMapping("/welcome")
    public ModelAndView helloWorld() {
        return new ModelAndView("/home");
    }

    @RequestMapping(value = "/realizarSimulado")
    public String obterQuestoes(ModelMap model){
        listaQuestao=new ArrayList<Questoes>();
        List<Respostas> listaRespostas=new ArrayList<Respostas>();
        Questoes questao = new Questoes();
        Respostas respostas = new Respostas();
        respostas.setIdResposta(1);
        respostas.setDescricao("Teste01");
        respostas.setCorreta(false);

        Respostas respostas1 = new Respostas();
        respostas1.setIdResposta(2);
        respostas1.setDescricao("Teste02");
        respostas1.setCorreta(true);

        listaRespostas.add(respostas);
        listaRespostas.add(respostas1);

        questao.setIdQuestao(01);
        questao.setDescricaoQuestao("Pergunta01");
        questao.setListaRespostas(listaRespostas);
        listaQuestao.add(questao);

        Questoes questao1 = new Questoes();
        questao1.setIdQuestao(02);
        questao1.setDescricaoQuestao("Pergunta02");
        questao1.setListaRespostas(listaRespostas);
        listaQuestao.add(questao1);

        Questoes questao2 = new Questoes();
        questao2.setIdQuestao(02);
        questao2.setDescricaoQuestao("Pergunta03");
        questao2.setListaRespostas(listaRespostas);
        listaQuestao.add(questao2);


        ModelAndView mav = new ModelAndView();
        model.addAttribute("listaQuestao", listaQuestao);
        mav.addObject(model);

        return "simulado";

    }

    public List<Questoes> getListaQuestao() {
        return listaQuestao;
    }

    public void setListaQuestao(List<Questoes> listaQuestao) {
        this.listaQuestao = listaQuestao;
    }
}
