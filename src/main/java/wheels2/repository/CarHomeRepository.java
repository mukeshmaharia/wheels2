package wheels2.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import wheels2.model.Contact;
import wheels2.model.Details;
import wheels2.model.Login;
import wheels2.model.Search;
import wheels2.model.Service1;
import wheels2.model.Signup;
import wheels2.model.Team;
import wheels2.model.Vehicle;

@Repository
public class CarHomeRepository {

	@Autowired
	JdbcTemplate jdbcTemplate;
	public ArrayList<Vehicle> getCarDetails() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/wheels2","root","Spanidea");
		String query="select * from vehicle_master";
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(query);
		ArrayList<Vehicle> vehicleList = new ArrayList<Vehicle>();
		while(rs.next()) {
			Vehicle vehicle=new Vehicle();
			vehicle.setVehicleName(rs.getString("vehicle_name"));
			vehicle.setAskingPrice(rs.getInt("asking_price"));
			vehicle.setAddress(rs.getString("address"));
			vehicle.setKmsDriven(rs.getString("kms_driven"));
			vehicle.setMfgYear(rs.getInt("mfg_year"));
			vehicle.setTransmissionType(rs.getString("transmission_type"));
			vehicle.setColour(rs.getString("colour"));
			vehicle.setType(rs.getString("type"));
			vehicle.setFuel(rs.getString("fuel"));
			vehicle.setFilePath(rs.getString("filepath"));
			vehicleList.add(vehicle);			
		}
		return vehicleList;
	}

	public ArrayList<Team> getTeam() {
		ArrayList<Team> teamList=null;
		Connection con=null;
		try {
			con=jdbcTemplate.getDataSource().getConnection();
			PreparedStatement stmt=con.prepareStatement("select * from team");
			ResultSet rs=stmt.executeQuery();
			teamList = new ArrayList<Team>();
			while(rs.next()) {
				Team team=new Team();
				team.setEmpName(rs.getString("emp_name"));
				team.setEmpDesignation(rs.getString("emp_position"));
				teamList.add(team);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			con.close();
			}
			catch(Exception e){				
			}			
		  }
		return teamList;
        }

	public int insertNewCar(Vehicle veh) {
		Connection con=null;
		try {
			con=jdbcTemplate.getDataSource().getConnection();
			PreparedStatement stmt=con.prepareStatement("insert into vehicle_master(vehicle_name,address,mfg_year,owner_name,owner_mobileno,owner_email,vehicle_no,kms_driven,asking_price,colour,transmission_type,type,fuel,brand,filepath) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			stmt.setString(1, veh.getVehicleName());
			stmt.setString(2, veh.getAddress());
			stmt.setInt(3, veh.getMfgYear());
			stmt.setString(4, veh.getOwnersName());
			stmt.setString(5, veh.getOwnersMobileNo());
			stmt.setString(6, veh.getEmail());
			stmt.setString(7, veh.getVehicleNo());
			stmt.setString(8, veh.getKmsDriven());
			stmt.setInt(9, veh.getAskingPrice());
			stmt.setString(10, veh.getColour());
			stmt.setString(12, veh.getType());
			stmt.setString(11, veh.getTransmissionType());
			stmt.setString(13, veh.getFuel());
			stmt.setString(14, veh.getBrand());
			String str=veh.getFilePath();
			String str1[]=str.split("/webapp/");			
			stmt.setString(15, str1[1]);
			return stmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			con.close();
																																																																																																																																																																																																																																																																																																					}
																																																																																																																																																																																																																																																																																																					catch(Exception e){				
			}			
		  }
		return 0;
	}
	public int insertService(Service1 veh) {
		Connection con=null;
		try {
			con=jdbcTemplate.getDataSource().getConnection();
			PreparedStatement stmt=con.prepareStatement("insert into service(owner_name,owner_mobileno,city,vehicle_no,brand,model_year,time_slot,service_required) values(?,?,?,?,?,?,?,?)");
			stmt.setString(1, veh.getOwnerName());
			stmt.setString(2, veh.getOwnerMobileNo());
			stmt.setString(3, veh.getCity());
			stmt.setString(4, veh.getVehicleNo());
			stmt.setString(5, veh.getBrand());
			stmt.setInt(6, veh.getModelYear());
			stmt.setString(7, veh.getSlot());
			stmt.setString(8, veh.getServiceRequired());
			return stmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			con.close();
																																																																																																																																																																																																																																																																																																					}
																																																																																																																																																																																																																																																																																																					catch(Exception e){				
			}			
		  }
		return 0;
	}
	public ArrayList<Service1> getService1(Service1 service1) {
		ArrayList<Service1> serviceList=null;
		Connection con=null;
		try {
			con=jdbcTemplate.getDataSource().getConnection();
			PreparedStatement stmt=con.prepareStatement("select * from service where vehicle_no='"+service1.vehicleNo+"'");
			ResultSet rs=stmt.executeQuery();
			serviceList = new ArrayList<Service1>();
			while(rs.next()) {
				Service1 service=new Service1();
				service.setOwnerName(rs.getString("owner_name"));
				service.setOwnerMobileNo(rs.getString("owner_mobileno"));
				service.setCity(rs.getString("city"));
				service.setVehicleNo(rs.getString("vehicle_no"));
				service.setBrand(rs.getString("brand"));
				service.setModelYear(rs.getInt("model_year"));
				service.setSlot(rs.getString("time_slot"));
				service.setServiceRequired(rs.getString("service_required"));
				serviceList.add(service);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			con.close();
			}
			catch(Exception e){				
			}			
		  }
		return serviceList;
        }
	public ArrayList<Contact> confirmContact(Contact contact1) {
		ArrayList<Contact> contactList=null;
		Connection con=null;
		try {
			con=jdbcTemplate.getDataSource().getConnection();
			PreparedStatement stmt=con.prepareStatement("select name,subject from contact where email='"+contact1.email+"'");
			ResultSet rs=stmt.executeQuery();
			contactList = new ArrayList<Contact>();
			while(rs.next()) {
				Contact contact=new Contact();
				contact.setName(rs.getString("name"));
				contact.setSubject(rs.getString("subject"));
				contactList.add(contact);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			con.close();
			}
			catch(Exception e){				
			}			
		  }
		return contactList;
        }

	public Object insertContact(Contact contact) {
		Connection con=null;
		try {
			con=jdbcTemplate.getDataSource().getConnection();
			PreparedStatement stmt=con.prepareStatement("insert into contact(name,email,subject,phone,message) values(?,?,?,?,?)");
			stmt.setString(1, contact.getName());
			stmt.setString(2, contact.getEmail());
			stmt.setString(3, contact.getSubject());
			stmt.setString(4, contact.getPhone());
			stmt.setString(5, contact.getMessage());
			return stmt.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			con.close();
																																																																																																																																																																																																																																																																																																					}
																																																																																																																																																																																																																																																																																																					catch(Exception e){				
			}			
		  }
		return null;
	}

	public ArrayList<Search> insertSearch(Search search) {
		Connection con=null;
		ArrayList<Search> searchList = null;

		try {
			con=jdbcTemplate.getDataSource().getConnection();
			PreparedStatement stmt=con.prepareStatement("select * from vehicle_master where vehicle_name=? or brand=? or type=? or address=? or mfg_year=?");
			stmt.setString(1, search.getKeyword());
			stmt.setString(2, search.getBrand());
			stmt.setString(3, search.getModel());
			stmt.setString(4, search.getLocation());
			stmt.setString(5, search.getModelYear());
			ResultSet rs= stmt.executeQuery();
			searchList=new ArrayList<Search>();
			while(rs.next()) {
				Search search1=new Search();
				search1.setKeyword(rs.getString("vehicle_name"));
				search1.setBrand(rs.getString("brand"));
				search1.setModel(rs.getString("type"));
				search1.setLocation(rs.getString("address"));
				search1.setMfgYear(rs.getInt("mfg_year"));
				search1.setKmsDriven(rs.getInt("kms_driven"));
				search1.setAskingPrice(rs.getInt("asking_price"));
				search1.setColour(rs.getString("colour"));
				search1.setFuel(rs.getString("fuel"));
				search1.setTransmissionType(rs.getString("transmission_type"));
				search1.setEmail(rs.getString("owner_email"));
				search1.setOwnersMobileNo(rs.getString("owner_mobileno"));
				search1.setVehicleNo(rs.getString("vehicle_no"));
				search1.setOwnersName(rs.getString("owner_name"));
				search1.setFilePath(rs.getString("filepath"));
				searchList.add(search1);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			con.close();
																																																																																																																																																																																																																																																																																																					}
																																																																																																																																																																																																																																																																																																					catch(Exception e){				
			}			
		  }
		return searchList;
	}

	public ArrayList<Login> login(Login login) {
		Connection con=null;
		ArrayList<Login> loginList=null;		
		try {
			con=jdbcTemplate.getDataSource().getConnection();
			PreparedStatement stmt=con.prepareStatement("select * from candidate where email=?");
			stmt.setString(1, login.getEmail());			
			loginList= new ArrayList<Login>();
			ResultSet rs= stmt.executeQuery();
			if(rs.next()) {
			  if(rs.getString("password").equals(login.getPassword())) {
						login.setEmail(rs.getString("email"));
						login.setFirstName(rs.getString("first_name"));
						login.setLastName(rs.getString("last_name"));						
						loginList.add(login);
						return loginList;
			  }
			  else {
				  login.setRemark("Invalid credentials.Please enter correct password.");
				  loginList.add(login);
				  return loginList;
			  }
			  }
			else {
				 login.setRemark("No records found.Please check your email.");
				 loginList.add(login);
				  return loginList;
			}
			}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			con.close();																																																																																																																																																																																																																																																																																																				}
																																																																																																																																																																																																																																																																																																					catch(Exception e){				
			}			
		  }
		return null;
	
	}

	public ArrayList<Signup> signup(Signup signup) {
		Connection con=null;
	   try {
		con=jdbcTemplate.getDataSource().getConnection();
		PreparedStatement stmt=con.prepareStatement("insert into candidate(first_name,last_name,mobile_no,email,password) values(?,?,?,?,?)");
		stmt.setString(1, signup.getFirstName());
		stmt.setString(2, signup.getLastName());
		stmt.setString(3, signup.getMobileNo());
		stmt.setString(4, signup.getEmail());
		stmt.setString(5, signup.getPsw());
		stmt.executeUpdate();
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	finally {
		try {
		con.close();																																																																																																																																																																																																																																																																																																	}
																																																																																																																																																																																																																																																																																																				catch(Exception e){				
		}			
	  }
	   ArrayList<Signup> signupList=null;		
		try {
			con=jdbcTemplate.getDataSource().getConnection();
			PreparedStatement stmt=con.prepareStatement("select * from candidate where email=?");
			stmt.setString(1, signup.getEmail());			
			signupList= new ArrayList<Signup>();
			ResultSet rs= stmt.executeQuery();
			if(rs.next()) {
			signup.setEmail(rs.getString("email"));
			signup.setFirstName(rs.getString("first_name"));
			signup.setLastName(rs.getString("last_name"));						
			signupList.add(signup);
			}
			return signupList;
		}  
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			con.close();																																																																																																																																																																																																																																																																																																				}
																																																																																																																																																																																																																																																																																																					catch(Exception e){				
			}			
		  }
	return null;
	}

	public ArrayList<Details> details(Details details) {
		Connection con=null;
		ArrayList<Details> detailsList=new ArrayList<Details>();;

		try {
			con=jdbcTemplate.getDataSource().getConnection();
			PreparedStatement stmt=con.prepareStatement("select * from vehicle_master where vehicle_no=?");
			stmt.setString(1, details.getId());
			ResultSet rs= stmt.executeQuery();
			
			while(rs.next()) {
				Details search1=new Details();
				search1.setVehicleName(rs.getString("vehicle_name"));
				search1.setBrand(rs.getString("brand"));
				search1.setModel(rs.getString("type"));
				search1.setAddress(rs.getString("address"));
				search1.setMfgYear(rs.getInt("mfg_year"));
				search1.setKmsDriven(rs.getString("kms_driven"));
				search1.setAskingPrice(rs.getInt("asking_price"));
				search1.setColour(rs.getString("colour"));
				search1.setFuel(rs.getString("fuel"));
				search1.setTransmissionType(rs.getString("transmission_type"));
				search1.setEmail(rs.getString("owner_email"));
				search1.setOwnersMobileNo(rs.getString("owner_mobileno"));
				search1.setVehicleNo(rs.getString("vehicle_no"));
				search1.setOwnersName(rs.getString("owner_name"));
				search1.setFilePath(rs.getString("filepath"));
				detailsList.add(search1);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
			con.close();																																																																																																																																																																																																																																																																																																				}
																																																																																																																																																																																																																																																																																																					catch(Exception e){				
			}			
		  }
		return detailsList;
	}
}
