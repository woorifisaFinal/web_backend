package com.woorifis.demo.controller;

import com.woorifis.demo.model.entity.Symbol;
import com.woorifis.demo.model.entity.SymbolDetail;
import com.woorifis.demo.model.entity.SymbolKeyword;
import com.woorifis.demo.model.service.SymbolDetailService;
import com.woorifis.demo.model.service.SymbolKeywordService;
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
    private final SymbolKeywordService symbolKeywordService;
    private final SymbolDetailService symbolDetailService;

    @GetMapping("/symbol/list")
    public String listSymbol(@RequestParam(required=false, defaultValue="1")Integer page, Model model){
        page--;
        log.debug("page: {}", page);
        Page<SymbolDetail> pageInfo = symbolDetailService.listSymbol(page);
        model.addAttribute("pageInfo", pageInfo);
        return "symbol/list";
    }

    @GetMapping("/symbol/search")
    public String searchSymbol(@RequestParam(required=false) String keyword, Model model){
        if (keyword!=null && !keyword.isEmpty()){
            List<SymbolDetail> searchResults = symbolKeywordService.searchSymbol(keyword);
            model.addAttribute("searchResults", searchResults);
        }
        return "symbol/search/return";

    }

    @GetMapping("/symbol/detail")
    public String detailSymbol(@RequestParam Long id, Model model ){
        log.debug("something: {}", id);
        try {
            SymbolDetail symbolDetail = symbolDetailService.detailSymbol(id);
            model.addAttribute("symbolDetail", symbolDetail);
            return "symbol/detail";
        }
        catch(RuntimeException e){
            return "symbol/list";
        }
    }

}