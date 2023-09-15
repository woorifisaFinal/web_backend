
package com.woorifis.demo.controller;

import com.woorifis.demo.model.entity.Euro;
import com.woorifis.demo.model.entity.Ftse;
import com.woorifis.demo.model.entity.Nikkei;
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
    public String searchSymbol(@RequestParam(required=true) String keyword, Model model){
        if (keyword!=null && !keyword.isEmpty()){
            List<SymbolDetail> searchResults = symbolKeywordService.searchSymbol(keyword);
            model.addAttribute("searchResults", searchResults);
            model.addAttribute("keyword", keyword);
        }
        return "symbol/search";

    }

    @GetMapping("/symbol/detail")
    public String detailSymbol(@RequestParam Long id, Model model) {
        log.debug("Received ID: {}", id);


        try {
            SymbolDetail symbolDetail = symbolDetailService.detailSymbol(id);
            Class<?> itemType = null; // 아이템 타입 초기값 설정

            // 아이템 타입 결정
            switch (id.intValue()) {
                case 100: itemType = Symbol.class; break;
                case 101: itemType = Ftse.class; break;
                case 102: itemType = Nikkei.class; break;
                case 103: itemType = Euro.class; break;
                // 다른 아이템에 대한 case 추가
                default: throw new IllegalArgumentException("Invalid ID");
            }

            // itemType에 따라서 모델에 추가
            if (itemType != null) {
                // 아이템 타입에 따라 모델에 해당 타입의 데이터 추가
                model.addAttribute("symbols", symbolService.getDataByItemId(id, itemType));
            } 

            model.addAttribute("symbolDetail", symbolDetail);
            return "symbol/detail";
        } catch (RuntimeException e) {
            return "symbol/list";
        }
    }


    
}

