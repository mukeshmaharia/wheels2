package wheels2.services;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wheels2.model.Contact;
import wheels2.model.Details;
import wheels2.model.Login;
import wheels2.model.Search;
import wheels2.model.Service1;
import wheels2.model.Signup;
import wheels2.model.Team;
import wheels2.model.Vehicle;
import wheels2.repository.CarHomeRepository;

@Service
public class CarHomeService {
	@Autowired
	CarHomeRepository carHomeRepository;
	public ArrayList<Vehicle> getCarDetails() throws ClassNotFoundException, SQLException {
		
		return carHomeRepository.getCarDetails();
	}
	public ArrayList<Team> getTeam() {
		return carHomeRepository.getTeam();
	}
	public int insertNewCar(Vehicle vehicle) {
		return carHomeRepository.insertNewCar(vehicle);
		
	}
	public int insertService( Service1 service) {
		return carHomeRepository.insertService(service);
		
	}
	
	 public ArrayList<Service1> getService1(Service1 service) {
	 
	  return carHomeRepository.getService1(service); 
	  }
	public Object insertContact(Contact contact) {
		return carHomeRepository.insertContact(contact);

	}
	public ArrayList<Contact> confirmContact(Contact contact) {
		return carHomeRepository.confirmContact(contact);
	}
	public ArrayList<Search> insertSearch(Search search) {
		return carHomeRepository.insertSearch(search);
		
	}
	public ArrayList<Login> login(Login login) {
		return carHomeRepository.login(login);
		
	}
	public ArrayList<Signup> insertSignup(Signup signup) {
		return carHomeRepository.signup(signup);
		
	}
	public ArrayList<Details> details(Details details) {
		return carHomeRepository.details(details);

	}
	 
}