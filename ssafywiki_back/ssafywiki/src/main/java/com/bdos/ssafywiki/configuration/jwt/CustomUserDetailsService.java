package com.bdos.ssafywiki.configuration.jwt;

import com.bdos.ssafywiki.user.entity.User;
import com.bdos.ssafywiki.user.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Service
@RequiredArgsConstructor
@Slf4j
public class CustomUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    /**
     * UserDetailsService 인터페이스를 구현한 클래스
     * loadUserByUsername 메소드를 오버라이드 : 넘겨받은 UserDetails 와 Authentication 의 패스워드를 비교하고 검증하는 로직을 처리
     * 유저에 대한 검증이 완료되면 Authentication 객체 리턴
     * */

    @Override
    public CustomUserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("Invalid authentication!"));

        if(user.getBlockedAt()!=null && user.getBlockedAt().isAfter(LocalDateTime.now())) {
            log.warn("로그인 불가능한 유저 "+user.getEmail());
            throw new UsernameNotFoundException("로그인 불가능한 사용자 입니다.");
        }
        return new CustomUserDetails(user);
    }

}
