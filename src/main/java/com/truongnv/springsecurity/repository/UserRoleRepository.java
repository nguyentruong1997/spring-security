package com.truongnv.springsecurity.repository;

import com.truongnv.springsecurity.entity.AppUser;
import com.truongnv.springsecurity.entity.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRoleRepository extends JpaRepository<UserRole,Long> {
    List<UserRole> findbyAppUser(AppUser appUser);
}
