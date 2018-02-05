package usersession.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import usersession.model.User;

public class UserDAOImpl implements UserDAO {

	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public void create(User user) {
		String queryUser = "insert into User ( name, email, password, gender,address,role) values (?,?,?,?,?,?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(queryUser, new Object[] { user.getName(), user.getEmail(), user.getPassword(),
				user.getGender(), user.getAddress(),user.getRole() });

		System.out.println("Inserted into User Table Successfully");
	}

	public User getById(int id) {
		String query = "select * from User where id = ?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		User user = jdbcTemplate.queryForObject(query, new Object[] { id }, new RowMapper<User>() {
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setAddress(rs.getString("address"));
				user.setPassword(rs.getString("password"));
				user.setEmail(rs.getString("email"));
				user.setGender(rs.getString("gender"));
				user.setRole(rs.getString("role"));
				return user;
			}
		});
		return user;
	}

	public void update(User user) {
		String queryUser = "update User set name=?, email=? , password = ?, address=?,gender=?, role=?  where id=?";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		System.out.println("Id:"+user.getId());

		int out = jdbcTemplate.update(queryUser,
				new Object[] { user.getName(), user.getEmail(), user.getPassword(),user.getAddress(),user.getGender(),user.getRole(), user.getId() });

		if (out != 0) {
			System.out.println("Employee updated with id=" + user.getId());
		} else
			System.out.println("No Employee found with id=" + user.getId());
	}

	public void deleteById(int id) {
		String query = "delete from User where id=?";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		int out = jdbcTemplate.update(query, id);
		if (out != 0) {
			System.out.println("User deleted with id=" + id);
			// return true;
		} else {
			System.out.println("No User found with id=" + id);
			// return false;
		}
	}

	public ArrayList<User> getAll() {
		String query = "select * from User";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		ArrayList<User> userList = new ArrayList<User>();
		List<Map<String, Object>> userRows = jdbcTemplate.queryForList(query);
		for (Map<String, Object> userRow : userRows) {
			User user = new User();
			user.setId(Integer.parseInt(String.valueOf(userRow.get("id"))));
			user.setName(String.valueOf(userRow.get("name")));
			user.setEmail(String.valueOf(userRow.get("email")));
			user.setPassword(String.valueOf(userRow.get("password")));
			user.setGender(String.valueOf(userRow.get("gender")));
			user.setRole(String.valueOf(userRow.get("role")));
			userList.add(user);
		}
		return userList;
	}

	public User loginCheck(String email, String password) {

		
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		String sql = "SELECT count(*) FROM User WHERE email = ? and password = ?";
		int count = jdbcTemplate.queryForObject(sql, new Object[] { email, password }, Integer.class);

		if (count > 0) {
			sql = "SELECT id FROM User WHERE email = ? and password = ?";
			int id = jdbcTemplate.queryForObject(sql, new Object[] { email, password }, Integer.class);
			System.out.println(count);
			return getById(id);
		}
		
		System.out.println("not find");
		return null;

	}

}
