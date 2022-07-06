package wheels2.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import wheels2.model.Contact;
import wheels2.model.Details;
import wheels2.model.Login;
import wheels2.model.Search;
import wheels2.model.Service1;
import wheels2.model.Signup;
import wheels2.model.Team;
import wheels2.model.Vehicle;
import wheels2.services.CarHomeService;

@Controller

public class CarHomeController {
      
	@Autowired
	CarHomeService carHomeService;
	@GetMapping("/")
	public String home(HttpServletRequest req) throws ClassNotFoundException, SQLException {
		ArrayList<Vehicle> vehicleList= carHomeService.getCarDetails();
		ArrayList<Team> teamList= carHomeService.getTeam();
		req.setAttribute("vehicleList", vehicleList);
		req.setAttribute("teamList", teamList);
		return "home1";
	}
	
	@GetMapping("/about")
	public String about(HttpServletRequest req) throws ClassNotFoundException, SQLException{
		ArrayList<Team> teamList= carHomeService.getTeam();
		req.setAttribute("teamList", teamList);
		return "about";
	}
	@GetMapping("/home")
		public String home1() {
			return "home1";
		}
	@PostMapping("/dashboard")
	 public String dashboard() {
		return "dashboard";
	}
	@GetMapping("/contact")
		public String contact1(HttpServletRequest req,Contact contact) {
		ArrayList<Team> teamList= carHomeService.getTeam();
		req.setAttribute("teamList", teamList);
			return "contact";
		}
	@PostMapping("/contact")
	public String contact(HttpServletRequest req,Contact contact) throws ClassNotFoundException, SQLException{
		carHomeService.insertContact(contact);
		ArrayList<Contact> contactList= carHomeService.confirmContact(contact);
		req.setAttribute("contactList", contactList);
		ArrayList<Team> teamList= carHomeService.getTeam();
		req.setAttribute("teamList", teamList);
		return "confirmContact";
	}
	@GetMapping("/cars")
    public String cars(HttpServletRequest req) throws ClassNotFoundException, SQLException{
		ArrayList<Vehicle> vehicleList= carHomeService.getCarDetails();
		req.setAttribute("vehicleList", vehicleList);
		return "cars";
	}
	@GetMapping("/services")
	public String services() {
		return "services";
	}
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	@RequestMapping(value="/insertNewCar",method=RequestMethod.POST)
	public String insertNewCar(HttpServletRequest req,Vehicle vehicle) {
		String filePath=uploadVehicleImageOnServer(vehicle);
		vehicle.setFilePath(filePath);
    	carHomeService.insertNewCar(vehicle);
    	ArrayList<Team> teamList= carHomeService.getTeam();
		req.setAttribute("teamList", teamList);
		return "confirmCarSell";
	}
	@RequestMapping(value="/insertNewCar",method=RequestMethod.GET)
	public String insertNewCar1(HttpServletRequest req,Vehicle vehicle) {		
		return "insertNewCar";
	}
	private String uploadVehicleImageOnServer(Vehicle vehicle) {
		String directory="/home/maharia/Desktop/development/Eclipse workspace/wheels2/src/main/webapp/img/carsimages";
		File fdirectory=new File(directory);
		if(!fdirectory.exists()) {
			fdirectory.mkdir();
		}
		String fname="";
		String filePath="";
		MultipartFile file=vehicle.getVehicleImage();
		if(file!=null) {
		 fname=file.getOriginalFilename();
		 if(fname.length()>0) {
			 try {
			filePath= fdirectory.getCanonicalPath() + File.separator + fname;
			BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(filePath));
			bos.write(file.getBytes());
			bos.close();
			return filePath;
			 }
			 catch(Exception e) {
				 
			 }
		 }
		}
		return null;
	}
       @PostMapping("/insertService")
       public String insertService(HttpServletRequest req,Service1 service) throws ClassNotFoundException, SQLException {
    	   carHomeService.insertService(service); 
    	   ArrayList<Service1> serviceList= carHomeService.getService1(service); 
  		  req.setAttribute("serviceList", serviceList); 
  		ArrayList<Team> teamList= carHomeService.getTeam();
		req.setAttribute("teamList", teamList);
 		  return "confirmservice";
       }
       @PostMapping("/confirmService")
       public String confirmService() {
    	   return "confirmService";
       }
	
	  @GetMapping("/applyservice") 
	  public String applyservice(){		
		  return "applyservices"; 
		  }
	  @PostMapping("/search")
	  public String search1(HttpServletRequest req,Search search) {
		  ArrayList<Search> searchList=  carHomeService.insertSearch(search); 
		  req.setAttribute("searchList", searchList);
		  return "search";
	  }
	  @GetMapping("/search") 
	  public String search(){		
		  return "search"; 
		  }
	  @PostMapping("/login")
	  public String login(HttpServletRequest req,Login login) throws ClassNotFoundException, SQLException {
		  ArrayList<Login> loginList=carHomeService.login(login);
		  req.setAttribute("loginList", loginList);
		  ArrayList<Vehicle> vehicleList= carHomeService.getCarDetails();
	 		req.setAttribute("vehicleList", vehicleList);
		  return "dashboard";
	  }
	  @PostMapping("/signup")
	  public String signup(HttpServletRequest req,Signup signup) throws ClassNotFoundException, SQLException {
   	   ArrayList<Signup> loginList= carHomeService.insertSignup(signup); 
 		  req.setAttribute("loginList", loginList); 
 		 ArrayList<Vehicle> vehicleList= carHomeService.getCarDetails();
 		req.setAttribute("vehicleList", vehicleList);
		  return "dashboard";
	  }
	  @GetMapping("/details")
	  public String details(HttpServletRequest req,Details details) {
		  ArrayList<Details> detailsList=carHomeService.details(details);
		  req.setAttribute("detailsList", detailsList);
		  return "carDetails";
	  }
	  
}
