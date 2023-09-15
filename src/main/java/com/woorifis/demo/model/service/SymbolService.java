package com.woorifis.demo.model.service;


import com.woorifis.demo.model.entity.Brazil;
import com.woorifis.demo.model.entity.Euro;

import com.woorifis.demo.model.entity.Ftse;
import com.woorifis.demo.model.entity.Gold;
import com.woorifis.demo.model.entity.India;
import com.woorifis.demo.model.entity.Kor10y;
import com.woorifis.demo.model.entity.Kor3y;
import com.woorifis.demo.model.entity.Kospi;
import com.woorifis.demo.model.entity.Nikkei;
import com.woorifis.demo.model.entity.Symbol;
import com.woorifis.demo.model.entity.Taiwan;
import com.woorifis.demo.model.entity.Us10y;
import com.woorifis.demo.model.entity.Us3y;
import com.woorifis.demo.model.repository.BrazilRepository;
import com.woorifis.demo.model.repository.EuroRepository;
import com.woorifis.demo.model.repository.FtseRepository;
import com.woorifis.demo.model.repository.GoldRepository;
import com.woorifis.demo.model.repository.IndiaRepository;
import com.woorifis.demo.model.repository.Kor10yRepository;
import com.woorifis.demo.model.repository.Kor3yRepository;
import com.woorifis.demo.model.repository.KospiRepository;
import com.woorifis.demo.model.repository.NikkeiRepository;
import com.woorifis.demo.model.repository.SymbolDetailRepository;
import com.woorifis.demo.model.repository.SymbolKeywordRepository;
import com.woorifis.demo.model.repository.SymbolRepository;
import com.woorifis.demo.model.repository.TaiwanRepository;
import com.woorifis.demo.model.repository.Us10yRepository;
import com.woorifis.demo.model.repository.Us3yRepository;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@Service
@RequiredArgsConstructor
public class SymbolService {
    private final SymbolRepository symbolRepository;
    private final FtseRepository ftseRepository;
    private final NikkeiRepository nikkeiRepository;
    private final EuroRepository euroRepository;
    private final KospiRepository kospiRepository;
    private final IndiaRepository indiaRepository;
    private final TaiwanRepository taiwanRepository;
    private final BrazilRepository brazilRepository;
    private final Kor3yRepository kor3yRepository;
    private final Kor10yRepository kor10yRepository;
    private final Us3yRepository us3yRepository;
    private final Us10yRepository us10yRepository;
    private final GoldRepository goldRepository;

    
    
//    public List<Symbol> getNasdaqById(Long id) {
//        // SymbolRepository를 사용하여 해당 종목의 Nasdaq 시세 정보를 조회합니다.
//        return symbolRepository.findBySymbolDetailId(id);
//    }

    
    
    // 아이템 ID에 따라 메서드 이름을 결정하는 메서드
    private String getMethodNameById(Long id) {
        String[] methodNames = {
            "getAllNasdaqData", "getAllFtseData", "getAllNikkeiData", "getAllEuroData",
            "getAllKospiData", "getAllIndiaData", "getAllTaiwanData", "getAllBrazilData",
            "getAllKor3yData", "getAllKor10yData", "getAllUs3yData", "getAllUs10yData",
            "getAllGoldData"
        };

        int index = (int) (id - 100); // ID에 따른 메서드 이름의 인덱스 계산
        if (index >= 0 && index < methodNames.length) {
            return methodNames[index];
        } else {
            throw new IllegalArgumentException("Invalid ID");
        }
    }

    // 아이템별로 데이터를 가져오는 메서드
    public <T> List<T> getDataByItemId(Long id,  Class<T> returnType) {
        String methodName = getMethodNameById(id);
        return invokeMethodByName(this, methodName, returnType);
    }

    // 리플렉션을 사용하여 메서드를 호출하는 메서드
    private <T> List<T>  invokeMethodByName(SymbolService service, String methodName,  Class<T> returnType) {
        try {
            // 메서드 이름으로 메서드 객체 가져오기
            Method method = service.getClass().getMethod(methodName);
            // 메서드 호출
            List<?> resultList = (List<?>) method.invoke(service);

            // 반환값을 returnType으로 캐스팅
            List<T> typedList = new ArrayList<>();
            for (Object item : resultList) {
                typedList.add(returnType.cast(item));
            }
            return typedList;
        } catch (Exception e) {
            throw new RuntimeException("Failed to invoke method", e);
        }
    }

    public List<Symbol> getAllNasdaqData() {
        return symbolRepository.findAll();
    }
    

    // FTSE 데이터를 가져오는 메서드
    public List<Ftse> getAllFtseData() {
        return ftseRepository.findAll();
    }
//
    // 니케이 데이터를 가져오는 메서드
    public List<Nikkei> getAllNikkeiData() {
        return nikkeiRepository.findAll();
    }
//
    
    public List<Euro> getAllEuroData() {
        return euroRepository.findAll();
    }
    
    public List<Kospi> getAllKospiData() {
        return kospiRepository.findAll();
    }
    
    public List<India> getAllIndiaData() {
        return indiaRepository.findAll();
    }
    public List<Taiwan> getAllTaiwanData() {
        return taiwanRepository.findAll();
    }
    
    public List<Brazil> getAllBrazilData() {
        return brazilRepository.findAll();
    }
    
    public List<Kor3y> getAllKor3yData() {
        return kor3yRepository.findAll();
    }
    
    public List<Kor10y> getAllKor10yData() {
        return kor10yRepository.findAll();
    }
    
    public List<Us3y> getAllUs3yData() {
        return us3yRepository.findAll();
    }
    
    public List<Us10y> getAllUs10yData() {
        return us10yRepository.findAll();
    }
    
    public List<Gold> getAllGoldData() {
        return goldRepository.findAll();
    }
    
}
