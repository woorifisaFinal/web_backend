package com.woorifis.demo.controller;

import com.woorifis.demo.model.entity.Symbol;
import com.woorifis.demo.model.service.SymbolService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
@Slf4j
public class SymbolController {

    private final SymbolService symbolService;

    @GetMapping("/symbol/list")
    public String listSymbol(@RequestParam(required=false, defaultValue="1")Integer page, Model model){
        page--;
        Page<Symbol> pageInfo = symbolService.listSymbol(page);
        model.addAttribute("pageInfo", pageInfo);
        return "symbol/list";
    }

    @GetMapping("/symbol/search")
    public String searchSymbol(@RequestParam(required=false) String keyword, Model model){
        if (keyword!=null && !keyword.isEmpty()){
            List<Symbol> searchResults = symbolService.searchSymbol(keyword);
            model.addAttribute("searchResults", searchResults);

        }
        return "symbol/search/return";

    }

    @GetMapping("/symbol/detail")
    public String detailSymbol(@RequestParam Long something, Model model ){
//        something = somethingIcanDistinguish
        log.debug("something: {}", something);
        try {
            Symbol symbol = symbolService.detailSymbol(something);
            model.addAttribute("symbol", symbol);
            return "symbol/detail";
        }
        catch(RuntimeException e){
            return "symbol/list";
        }
    }

}
