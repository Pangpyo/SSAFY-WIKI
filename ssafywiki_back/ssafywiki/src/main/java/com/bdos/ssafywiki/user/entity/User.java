package com.bdos.ssafywiki.user.entity;

import com.bdos.ssafywiki.user.enums.Role;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.data.jpa.repository.Temporal;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

@Entity
@Getter
@NoArgsConstructor
@ToString
@EntityListeners(AuditingEntityListener.class)
@Table(name = "users")
public class User implements UserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long id;

    @Column(name = "user_email", nullable = false)
    private String email;

    @Setter
    @Column(name = "user_password", nullable = false)
    private String password;

    @Column(name = "user_name", nullable = false)
    private String name;

    @Setter
    @Column(name = "user_nickname", nullable = false)
    private String nickname;

    @Enumerated(EnumType.STRING)
    @Column(name = "user_role")
    private Role role;

    @Column(name = "user_number")
    private String number;

    @Column(name = "user_campus", nullable = false)
    private String campus;

    @CreationTimestamp
    @Column(name = "user_created_at", columnDefinition = "TIMESTAMP")
    private LocalDateTime createdAt;

    @UpdateTimestamp
    @Column(name = "user_modified_at", columnDefinition = "TIMESTAMP")
    private LocalDateTime modifiedAt;

    @Setter
    @Column(name = "user_blocked_at", columnDefinition = "TIMESTAMP")
    private LocalDateTime blockedAt;

    @Setter
    @Column
    private String refreshToken;



    @Builder
    public User(String email, String password, String name, String nickname, Role role, String number, String campus, String refreshToken) {
        this.email = email;
        this.password = password;
        this.name = name;
        this.nickname = nickname;
        this.role = role;
        this.number = number;
        this.campus = campus;
        this.refreshToken = refreshToken;
    }

    public User(Long id, String email, String password, String name, String nickname, Role role, String number, String campus, LocalDateTime createdAt, LocalDateTime modifiedAt, LocalDateTime blockedAt, String refreshToken) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.name = name;
        this.nickname = nickname;
        this.role = role;
        this.number = number;
        this.campus = campus;
        this.createdAt = createdAt;
        this.modifiedAt = modifiedAt;
        this.blockedAt = blockedAt;
        this.refreshToken = refreshToken;
    }

    public User orElseThrow(Object o) {
        return null;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {

        return Arrays.asList(new SimpleGrantedAuthority(this.role.name()));
    }

    @Override
    public String getUsername() {
        return null;
    }

    @Override
    public boolean isAccountNonExpired() {
        return false;
    }

    @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return false;
    }

    @Override
    public boolean isEnabled() {
        return false;
    }
}
