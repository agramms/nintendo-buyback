package com.nintendo.buyback;

import com.nintendo.buyback.model.Role;
import com.nintendo.buyback.model.User;
import com.nintendo.buyback.model.enumerators.Status;
import com.nintendo.buyback.repository.RoleRepository;
import com.nintendo.buyback.repository.UserRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserRoleTest {

    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private UserRepository userRepository;

    @Test
    public void createRoleUser()
    {

        Role role = new Role();
        role.setRole("TEST");
        role.setName("Permissão de Teste");
        this.entityManager.persist(role);
        Role persistedRole = roleRepository.findByRole("TEST");

        User user = new User();
        user.setName("Alessandro - Teste");
        user.setEmail("a.v.g@gmail.com");
        user.setActive(Status.ACTIVE);
        user.getRoles().add(role);
        this.entityManager.persist(user);
        User persistedUser = userRepository.findByEmail("a.v.g@gmail.com");
        assertThat(persistedUser.getName()).isEqualTo("Alessandro - Teste");
        assertThat(persistedRole.getName()).isEqualTo("Permissão de Teste");
    }

}
