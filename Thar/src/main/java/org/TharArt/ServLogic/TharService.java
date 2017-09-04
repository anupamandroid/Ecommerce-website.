package org.TharArt.ServLogic;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.TharArt.DaoLogic.TharDao;
import org.TharArt.DtoMapping.ItemsDto;
import org.TharArt.DtoMapping.NewsLetterDto;
import org.TharArt.DtoMapping.UserDto;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class TharService {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginService.class);
	
	@Autowired
	TharDao dao;
	
	// For mail.....
	@Autowired
	private JavaMailSender mailSender;
	
	public TharService() {
		logger.info("TharService is created ......");
	}
	
	public List<ItemsDto> fetchAll()
	{
		return dao.fetchBrassDto();
	}

	public boolean insertALL(String itemFolder, String itemName, String itemDetail, double price, double itemHeight,
			double itemLength, double itemWidth, double itemWeight, MultipartFile[] files) throws Exception {
		
		logger.info("inside the service");
		
		ItemsDto dto = new ItemsDto();
		
		dto.setItemName(itemName);
		dto.setProductDetail(itemDetail);
		dto.setItemSalesPrice(price);
		dto.setItemHeight(itemHeight);
		dto.setItemLength(itemLength);
		dto.setItemWidth(itemWidth);
		dto.setItemWeight(itemWeight);
		dto.setMainImageUrl(saveImage(files[0],itemFolder));
		dto.setOtherImageUrl1(saveImage(files[1],itemFolder));
		dto.setOtherImageUrl2(saveImage(files[2],itemFolder));
		dto.setOtherImageUrl3(saveImage(files[3],itemFolder));
		dto.setItemCategory(itemFolder);

		if(dao.saveDto(dto/*,item*/)) return true;
		return false;
		
	}
	
	public String saveImage(MultipartFile file, String itemFolder)throws Exception {

		String url = "C:\\SpringWorkSpace\\Thar\\src\\main\\webapp\\resources\\CoolTheme\\images\\"+itemFolder; 

		BufferedOutputStream stream = null;
		Path path = null;
		try {
			path = Paths.get(url);
			if (!Files.exists(path)) {
				Files.createDirectories(path);
				System.out.println("Directory is created!");
			}
			byte[] bytes = file.getBytes();
			String fileName = file.getOriginalFilename();
			stream = new BufferedOutputStream(
					new FileOutputStream(new File(url + File.separator + file.getOriginalFilename())));
			stream.write(bytes);
			stream.flush();
			logger.info("File is successfully saved !!");
			return itemFolder+"/"+fileName;
		} catch (Exception e) {
			logger.error("Error while Uploading ! "+e.getMessage() );
			e.printStackTrace();
			return "invalid";
		} finally {
			try {
				if (stream != null) {
					stream.close();
				}
			} catch (Exception e) {
				logger.error("Error while closing BufferedOutputStream object ! "+e.getMessage() );
				e.printStackTrace();
			}
		}

	}
	
	public List<ItemsDto> fetchAllDto(String itemFolder)
	{
		return dao.fetchDto(itemFolder);
	}

	public boolean insertTagUser(String userName, String userPassword) {
		
		UserDto UDto = new UserDto();
		UDto.setUserName(userName);
		UDto.setPassword(getEncryptedPassword(userPassword));
		UDto.setUserRole("ROLE_USER");
		UDto.setStatus(false);
		if(dao.saveUserDto(UDto)) return true;
		return false;
	}
	
	public boolean insertTagAdmin(String adminName, String adminPassword) {
		UserDto UDto = new UserDto();
		UDto.setUserName(adminName);
		UDto.setPassword(getEncryptedPassword(adminPassword));
		UDto.setUserRole("ROLE_ADMIN");
		UDto.setStatus(true);
		if(dao.saveUserDto(UDto)) return true;
		return false;
	}
	
	private String getEncryptedPassword( String password)
	{
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12);
		return encoder.encode(password);
	}

	public List<UserDto> fetchAllUserDto(String userRole) {
		
		return dao.fetchUserDto(userRole);
	}

	public boolean insertNewsLetter(String email) {
		
		if(dao.newsLetter(email)!= null){
			if(dao.updateNewsLetter(email)) {
				// For Activation Email
				sendMailHtml("debraj@ekagga.com", email, " News Letter ",
						"Welcome back "+email+"!! Nice to see you"+"  http://localhost:8080/CtrlMapping/deactiveNewsLetter?email=" + email);
				return true;
			}
			return false;
		}
		else{
		NewsLetterDto NDto = new NewsLetterDto();
		NDto.setNewsLetterEmail(email);
		NDto.setNewsLetterActive(true);
		if(dao.newsLetterDto(NDto)){
			// For Activation Email
			sendMailHtml("debraj@ekagga.com", email, " News Letter ",
					"Thank You for Subscribe"+" http://localhost:8080/CtrlMapping/deactiveNewsLetter?email=" + email);
			return true;
		}
		return false;}
	}

	public boolean deactiveNewsLetter(String email) {
		if(dao.updateActiveNewsLetter(email)){
			// For Activation Email
			sendMailHtml("debraj@ekagga.com", email, " News Letter ",
					"Successfully Deactivation "+ email);
			return true;
		}
		return false;
	}
	
	public void sendMailHtml(final String from, final String to, final String subject, final String msg) {

		 MimeMessagePreparator messagePreparator = new MimeMessagePreparator() {  
             
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				mimeMessage.setRecipient(Message.RecipientType.TO,new InternetAddress(to));  
                mimeMessage.setFrom(new InternetAddress(from));  
                mimeMessage.setSubject(subject);  
                //mimeMessage.setText(msg);
             // Send the actual HTML message, as big as you like
                mimeMessage.setContent( "<h1 style='background-color: #f96332;'> Welcome to Thar</h1><br>"
                		+ ""+ msg,"text/html");
			}  
     };  
		// in order to send mail
		mailSender.send(messagePreparator);
	}

	public List<String> fetchAllItemsType() {
		
		ArrayList<String> al = new ArrayList<String>();
		al.add("brass");
		al.add("consoleTable");
		al.add("sideboards");
		al.add("wardrobes");
		al.add("carouselSlider");
		return al;
	}
	
}
