package org.TharArt.MyBatisMapping;

import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.mybatis.spring.annotation.MapperScan;

import java.util.List;

import org.TharArt.DtoMapping.ItemsDto;
import org.TharArt.DtoMapping.NewsLetterDto;
import org.TharArt.DtoMapping.UserDto;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;

@MapperScan
public interface TharArtMapping {

	final String userValidation = "SELECT * FROM user_table WHERE u_name = #{userName} and u_active= 1";
	final String fetchUserTable = "SELECT * FROM user_table WHERE u_role = #{userRole}";
	final String fetchBrassTable = "SELECT * FROM items_table WHERE item_category = 'brass'";
	final String fetchTable = "SELECT * FROM items_table WHERE item_category = #{itemFolder}";
	final String fetchNewsLetter="SELECT * FROM news_letter_table WHERE news_letter_email=#{newsLetterEmail}";
	final String insert = "INSERT INTO items_table (item_id, item_name, pruduct_detail,item_sales_price,item_height,item_length,item_width,item_weight,main_image_url,other_image_url1,other_image_url2,other_image_url3,item_category) "
			+ "VALUES (#{itemId}, #{itemName}, #{productDetail}, #{itemSalesPrice}, #{itemHeight},#{itemLength},#{itemWidth},#{itemWeight},#{mainImageUrl},#{otherImageUrl1},#{otherImageUrl2},#{otherImageUrl3},#{itemCategory})";
	final String insertUserDto = "INSERT INTO user_table (u_id, u_name,u_password,u_role,u_active)"
			+ "VALUES (#{userId}, #{userName}, #{password}, #{userRole}, #{status})";
	final String insertNewsLetterDto = "INSERT INTO news_letter_table (news_letter_id, news_letter_email,news_letter_active)"
			+ "VALUES (#{newsLetterId}, #{newsLetterEmail}, #{newsLetterActive})";
	final String updateNewsLetter = "UPDATE news_letter_table SET news_letter_active = #{newsLetterActive} WHERE news_letter_email = #{newsLetterEmail}";
	
	@Results(value = { @Result(property = "userId", column = "u_id"), @Result(property = "userName", column = "u_name"),
			@Result(property = "password", column = "u_password"), @Result(property = "userRole", column = "u_role"), 
			 @Result(property = "status", column = "u_active") })

	@Select(userValidation)
	UserDto loginUserValidationd(@Param(value = "userName") String userName);
	
	@Results(value = { @Result(property = "userId", column = "u_id"), @Result(property = "userName", column = "u_name"),
			@Result(property = "password", column = "u_password"), @Result(property = "userRole", column = "u_role"), 
			 @Result(property = "status", column = "u_active") })

	@Select(fetchUserTable)
	List<UserDto> fetchUserTable(@Param(value = "userRole") String userRole);
	
	@Insert(insertUserDto)
	@Options(useGeneratedKeys = true, keyProperty = "userId")
	void insertUserDto(UserDto uDto);

	@Results(value = { @Result(property = "itemId", column = "item_id"),
			@Result(property = "itemName", column = "item_name"),
			@Result(property = "productDetail", column = "pruduct_detail"),
			@Result(property = "itemSalesPrice", column = "item_sales_price"),
			@Result(property = "itemHeight", column = "item_height"),
			@Result(property = "itemLength", column = "item_length"),
			@Result(property = "itemWidth", column = "item_width"),
			@Result(property = "itemWeight", column = "item_weight"),
			@Result(property = "mainImageUrl", column = "main_image_url"),
			@Result(property = "otherImageUrl1", column = "other_image_url1"),
			@Result(property = "otherImageUrl2", column = "other_image_url2"),
			@Result(property = "otherImageUrl3", column = "other_image_url3"),
			@Result(property = "itemCategory", column = "item_category")})

	@Select(fetchBrassTable)
	List<ItemsDto> fetchBrassTable();
	
	
	@Results(value = { @Result(property = "itemId", column = "item_id"),
			@Result(property = "itemName", column = "item_name"),
			@Result(property = "productDetail", column = "pruduct_detail"),
			@Result(property = "itemSalesPrice", column = "item_sales_price"),
			@Result(property = "itemHeight", column = "item_height"),
			@Result(property = "itemLength", column = "item_length"),
			@Result(property = "itemWidth", column = "item_width"),
			@Result(property = "itemWeight", column = "item_weight"),
			@Result(property = "mainImageUrl", column = "main_image_url"),
			@Result(property = "otherImageUrl1", column = "other_image_url1"),
			@Result(property = "otherImageUrl2", column = "other_image_url2"),
			@Result(property = "otherImageUrl3", column = "other_image_url3"),
			@Result(property = "itemCategory", column = "item_category")})
	
	@Select(fetchTable)
	List<ItemsDto> fetchTable(@Param(value="itemFolder") String itemFolder);

	@Insert(insert)
	@Options(useGeneratedKeys = true, keyProperty = "itemId")
	void insert(ItemsDto dto);
	
	@Results(value = { @Result(property = "newsLetterId", column = "news_letter_id"), @Result(property = "newsLetterEmail", column = "news_letter_email"),
			@Result(property = "newsLetterActive", column = "news_letter_active")})
	@Select(fetchNewsLetter)
	Object fetchNewsLetter(@Param(value = "newsLetterEmail")String newsLetterEmail);
	
	@Update(updateNewsLetter)
	void updateNewsLetterActiveCol(@Param(value = "newsLetterEmail") String newsLetterEmail, @Param(value = "newsLetterActive") boolean newsLetterActive);

	@Insert(insertNewsLetterDto)
	@Options(useGeneratedKeys = true, keyProperty = "newsLetterId")
	void insertNewsLetter(NewsLetterDto nDto);


}
