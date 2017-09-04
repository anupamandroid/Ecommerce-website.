package org.TharArt.ServLogic;

import java.util.ArrayList;
import java.util.List;

import org.TharArt.DaoLogic.TharDao;
import org.TharArt.DtoMapping.UserDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service("userDetailsService")
public class LoginService implements UserDetailsService {

	private static final Logger logger = LoggerFactory.getLogger(LoginService.class);

	@Autowired
	TharDao dao;

	public LoginService() {
		logger.info("LoginService is created ......");
	}

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		UserDto user = dao.findBy(email);
		logger.info("User : " + user);
		if (user == null) {
			throw new UsernameNotFoundException("User not Found !!!");
		}
		List<GrantedAuthority> authority = new ArrayList<GrantedAuthority>();
		authority.add(new SimpleGrantedAuthority(user.getUserRole()));
		org.springframework.security.core.userdetails.User securityUser = new User(user.getUserName(),
				user.getPassword(), authority);

		return securityUser;

	}

}
