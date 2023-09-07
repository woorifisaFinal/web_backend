//package com.example.demo;
//
//import com.woorifis.demo.model.entity.SymbolDetail;
//import com.woorifis.demo.model.repository.SymbolDetailRepository;
//import com.woorifis.demo.model.service.SymbolDetailService;
//import org.junit.Before;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.mockito.Mock;
//import org.mockito.MockitoAnnotations;
//import org.mockito.junit.MockitoJUnitRunner;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.domain.Sort;
//
//import java.util.Optional;
//
//import static org.junit.Assert.assertEquals;
//import static org.mockito.Mockito.*;
//
//@RunWith(MockitoJUnitRunner.class)
//public class SymbolDetailTest {
//
//    @Mock
//    private SymbolDetailRepository symbolDetailRepository;
//
//    private SymbolDetailService symbolDetailService;
//
////    @Before
////    public void setUp() {
////        MockitoAnnotations.initMocks(this);
////        symbolDetailService = new SymbolDetailService(symbolDetailRepository);
////    }
//
//    @Test
//    public void testGetNameById() {
//        Long symbolDetailId = 1L;
//        String expectedName = "TestName";
//
//        SymbolDetail symbolDetail = new SymbolDetail();
//        symbolDetail.setId(symbolDetailId);
//        symbolDetail.setName(expectedName);
//
//        when(symbolDetailRepository.findById(symbolDetailId)).thenReturn(Optional.of(symbolDetail));
//
//        String resultName = symbolDetailService.getNameById(symbolDetailId);
//
//        assertEquals(expectedName, resultName);
//        verify(symbolDetailRepository, times(1)).findById(symbolDetailId);
//    }
//
//    @Test
//    public void testDetailSymbol() {
//        Long symbolDetailId = 1L;
//
//        SymbolDetail expectedSymbolDetail = new SymbolDetail();
//        expectedSymbolDetail.setId(symbolDetailId);
//        expectedSymbolDetail.setName("TestName");
//        expectedSymbolDetail.setDetail("TestDetail");
//
//        when(symbolDetailRepository.findById(symbolDetailId)).thenReturn(Optional.of(expectedSymbolDetail));
//
//        SymbolDetail resultSymbolDetail = symbolDetailService.detailSymbol(symbolDetailId);
//
//        assertEquals(expectedSymbolDetail.getId(), resultSymbolDetail.getId());
//        assertEquals(expectedSymbolDetail.getName(), resultSymbolDetail.getName());
//        assertEquals(expectedSymbolDetail.getDetail(), resultSymbolDetail.getDetail());
//        verify(symbolDetailRepository, times(1)).findById(symbolDetailId);
//    }
//
//    @Test
//    public void testListSymbol() {
//        int page = 0;
//
//        // 가짜 페이지 데이터 생성
//        Page<SymbolDetail> fakePage = new Page<SymbolDetail>() {
//            @Override
//            public int getTotalPages() {
//                return 1;
//            }
//
//            @Override
//            public long getTotalElements() {
//                return 5;
//            }
//
//            @Override
//            public <U> Page<U> map(java.util.function.Function<? super SymbolDetail, ? extends U> converter) {
//                return null;
//            }
//
//            @Override
//            public int getNumber() {
//                return 0;
//            }
//
//            @Override
//            public int getSize() {
//                return 5;
//            }
//
//            @Override
//            public int getNumberOfElements() {
//                return 5;
//            }
//
//            @Override
//            public boolean hasContent() {
//                return true;
//            }
//
//            @Override
//            public List<SymbolDetail> getContent() {
//                List<SymbolDetail> symbolDetails = new ArrayList<>();
//                for (int i = 1; i <= 5; i++) {
//                    SymbolDetail symbolDetail = new SymbolDetail();
//                    symbolDetail.setId((long) i);
//                    symbolDetail.setName("TestName" + i);
//                    symbolDetail.setDetail("TestDetail" + i);
//                    symbolDetails.add(symbolDetail);
//                }
//                return symbolDetails;
//            }
//
//            @Override
//            public Sort getSort() {
//                return Sort.unsorted();
//            }
//
//            @Override
//            public boolean isFirst() {
//                return true;
//            }
//
//            @Override
//            public boolean isLast() {
//                return true;
//            }
//
//            @Override
//            public boolean hasNext() {
//                return false;
//            }
//
//            @Override
//            public boolean hasPrevious() {
//                return false;
//            }
//
//            @Override
//            public Pageable nextPageable() {
//                return null;
//            }
//
//            @Override
//            public Pageable previousPageable() {
//                return null;
//            }
//
//            @NotNull
//            @Override
//            public Iterator<SymbolDetail> iterator() {
//                return null;
//            }
//        };
//
//        when(symbolDetailRepository.findAll(any(Pageable.class))).thenReturn(fakePage);
//
//        Page<SymbolDetail> resultPage = symbolDetailService.listSymbol(page);
//
//        assertEquals(1, resultPage.getTotalPages());
//        assertEquals(5, resultPage.getTotalElements());
//        assertEquals(5, resultPage.getNumberOfElements());
//        assertEquals(true, resultPage.hasContent());
//        assertEquals(5, resultPage.getContent().size());
//        verify(symbolDetailRepository, times(1)).findAll(any(Pageable.class));
//    }
//
//    // 다른 테스트 메서드들 추가 가능
//}
