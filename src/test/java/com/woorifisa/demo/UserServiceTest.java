//package com.woorifisa.demo;
//
//import org.junit.jupiter.api.Test;
//
//
//import org.junit.jupiter.api.extension.ExtendWith;
//import org.mockito.InjectMocks;
//import org.mockito.Mock;
//import org.mockito.junit.jupiter.MockitoExtension;
//import com.woorifis.demo.model.dto.UserDTO;
//import com.woorifis.demo.model.entity.User;
//import com.woorifis.demo.model.repository.UserRepository;
//import com.woorifis.demo.model.service.UserService;
//
//import static org.mockito.Mockito.*;
//
//import java.util.Optional;
//
//import static org.junit.jupiter.api.Assertions.*;
//
//@ExtendWith(MockitoExtension.class)
//public class UserServiceTest {
//
//    @Mock
//    private UserRepository userRepository;
//
//    @InjectMocks
//    private UserService userService;
//
//
//    @Test
//    public void testSaveUser() {
//        // 모킹 설정: userRepository.save 호출 시 모킹된 데이터 반환
//        UserDTO userDTO = new UserDTO();
//        userDTO.setUserId("testuser");
//        userDTO.setUserName("Test User");
//        userDTO.setUserEmail("test@example.com");
//        userDTO.setPassword("testpassword");
//
//        // userService에서 save 호출
//        userService.save(userDTO);
//
//        // verify를 사용하여 userRepository의 save 메서드가 1번 호출되었는지 검증
//        verify(userRepository, times(1)).save(any(User.class));
//    }
//
//    @Test
//    public void testLoginUser() {
//        // 모킹 설정: userRepository.findByUserEmail 호출 시 모킹된 데이터 반환
//        User user = new User();
//        user.setUserId("testuser");
//        user.setUserEmail("test@example.com");
//        user.setPassword("testpassword");
//
//        when(userRepository.findByUserId("testuser")).thenReturn(Optional.of(user));
//
//        // userService에서 login 호출
//        UserDTO userDTO = new UserDTO();
//        userDTO.setUserId("testuser");
//        userDTO.setPassword("testpassword");
//
//        UserDTO loginResult = userService.login(userDTO);
//
//        // 로그인 결과가 null이 아니어야 함
//        assertNotNull(loginResult);
//        assertEquals("testuser", loginResult.getUserId());
//
//        // verify를 사용하여 userRepository의 findByUserEmail 메서드가 1번 호출되었는지 검증
//        verify(userRepository, times(1)).findByUserId("testuser");
//    }
//
//    @Test
//    public void testGetUserInfo() {
//        // 모킹 설정: userRepository.findByUserId 호출 시 모킹된 데이터 반환
//        User user = new User();
//        user.setUserId("testuser");
//        user.setUserName("Test User");
//        user.setUserEmail("test@example.com");
//        user.setType("user");
//
//        when(userRepository.findByUserId("testuser")).thenReturn(Optional.of(user));
//
//        // userService에서 getUserInfo 호출
//        UserDTO userDTO = userService.getUserInfo("testuser");
//
//        // 사용자 정보를 가져왔으므로 null이 아니어야 함
//        assertNotNull(userDTO);
//        assertEquals("Test User", userDTO.getUserName());
//
//        // verify를 사용하여 userRepository의 findByUserId 메서드가 1번 호출되었는지 검증
//        verify(userRepository, times(1)).findByUserId("testuser");
//    }
//
//
//    @Test
//    public void testIsPasswordCorrect() {
//        // 모킹 설정: userRepository.findByUserId 호출 시 모킹된 데이터 반환
//        User user = new User();
//        user.setUserId("testuser");
//        user.setPassword("testpassword");
//
//        when(userRepository.findByUserId("testuser")).thenReturn(Optional.of(user));
//
//        // userService에서 isPasswordCorrect 호출
//        boolean isCorrect = userService.isPasswordCorrect("testuser", "testpassword");
//
//        // 비밀번호가 올바르므로 true여야 함
//        assertTrue(isCorrect);
//
//        // verify를 사용하여 userRepository의 findByUserId 메서드가 1번 호출되었는지 검증
//        verify(userRepository, times(1)).findByUserId("testuser");
//    }
//
//
//    @Test
//    public void testUpdateInfo() {
//        // 모킹 설정: userRepository.findByUserId 호출 시 모킹된 데이터 반환
//        User user = new User();
//        user.setUserId("testuser");
//        user.setUserName("Test User");
//        user.setUserEmail("test@example.com");
//        user.setPassword("test");
//        when(userRepository.findByUserId("testuser")).thenReturn(Optional.of(user));
//
//        // userService에서 updateInfo 호출
//        userService.updateInfo("testuser", "new@example.com", "test2");
//
//        // verify를 사용하여 userRepository의 save 메서드가 1번 호출되었는지 검증
//        verify(userRepository, times(1)).save(any(User.class));
//
//        // 업데이트된 사용자 정보 확인
////        assertEquals("New Name", user.getUserName());
//        assertEquals("new@example.com", user.getUserEmail());
//        assertEquals("test2", user.getPassword());
//    }
//
//}
//
//
