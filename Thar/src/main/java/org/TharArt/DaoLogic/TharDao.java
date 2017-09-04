package org.TharArt.DaoLogic;

import java.util.List;

import org.TharArt.DtoMapping.ItemsDto;
import org.TharArt.DtoMapping.NewsLetterDto;
import org.TharArt.DtoMapping.UserDto;
import org.TharArt.MyBatisMapping.TharArtMapping;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TharDao {

	@Autowired
	private SqlSessionFactory factory;

	private static final Logger logger = LoggerFactory.getLogger(TharDao.class);

	public TharDao() {

		logger.info("TharDao is created ......");
	}

	public UserDto findBy(String email) {
		SqlSession session = factory.openSession();
		TharArtMapping mapper = (TharArtMapping) session.getMapper(TharArtMapping.class);
		try {

			return mapper.loginUserValidationd(email);
		} finally {
			session.close();
		}
	}

	public List<ItemsDto> fetchBrassDto() {
		SqlSession session = factory.openSession();
		TharArtMapping mapper = (TharArtMapping) session.getMapper(TharArtMapping.class);
		try {

			return mapper.fetchBrassTable();
		} finally {
			session.close();
		}
	}

	public boolean saveDto(ItemsDto dto/* String itemTable */) {

		SqlSession session = factory.openSession();
		TharArtMapping mapper = (TharArtMapping) session.getMapper(TharArtMapping.class);
		try {

			mapper.insert(dto/* ,itemTable */);
			return true;
		} finally {
			session.close();
		}

	}

	public List<ItemsDto> fetchDto(String itemFolder) {
		SqlSession session = factory.openSession();
		TharArtMapping mapper = (TharArtMapping) session.getMapper(TharArtMapping.class);
		try {
			return mapper.fetchTable(itemFolder);
		} finally {
			session.close();
		}
	}

	public boolean saveUserDto(UserDto uDto) {
		SqlSession session = factory.openSession();
		TharArtMapping mapper = (TharArtMapping) session.getMapper(TharArtMapping.class);
		try {

			mapper.insertUserDto(uDto);
			return true;
		} finally {
			session.close();
		}

	}

	public List<UserDto> fetchUserDto(String userRole) {
		SqlSession session = factory.openSession();
		TharArtMapping mapper = (TharArtMapping) session.getMapper(TharArtMapping.class);
		try {
			return mapper.fetchUserTable(userRole);
		} finally {
			session.close();
		}
	}

	public Object newsLetter(String newsLetterActive) {
		
		SqlSession session = factory.openSession();
		TharArtMapping mapper = (TharArtMapping) session.getMapper(TharArtMapping.class);
		try {
			return mapper.fetchNewsLetter(newsLetterActive);
		} finally {
			session.close();
		}
	}

	public boolean updateNewsLetter(String newsLetterEmail) {
		
		SqlSession session = factory.openSession();
		TharArtMapping mapper = (TharArtMapping) session.getMapper(TharArtMapping.class);
		try {
			mapper.updateNewsLetterActiveCol(newsLetterEmail, true);
			session.commit();
			System.out.println("updateActiveCol successfully");
			return true;
		} finally {
			session.close();
		}
	}

	public boolean newsLetterDto(NewsLetterDto nDto) {
		SqlSession session = factory.openSession();
		TharArtMapping mapper = (TharArtMapping) session.getMapper(TharArtMapping.class);
		try {

			mapper.insertNewsLetter(nDto);
			return true;
		} finally {
			session.close();
		}
	}

	public boolean updateActiveNewsLetter(String newsLetterEmail) {
		SqlSession session = factory.openSession();
		TharArtMapping mapper = (TharArtMapping) session.getMapper(TharArtMapping.class);
		try {
			mapper.updateNewsLetterActiveCol(newsLetterEmail, false);
			session.commit();
			System.out.println("updateActiveCol successfully");
			return true;
		} finally {
			session.close();
		}
	}
}
