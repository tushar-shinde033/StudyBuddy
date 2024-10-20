package doubtdao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import entities.AllCourses;

public class RowMapperAllCource implements RowMapper<AllCourses> {

	@Override
	public AllCourses mapRow(ResultSet rs, int rowNum) throws SQLException {
		AllCourses object=new AllCourses();
		object.setId(rs.getInt(1));
		object.setcName(rs.getString(2));
		object.setcDescription(rs.getString(3));
		object.setcInstructor(rs.getString(4));
		object.setcExperience(rs.getString(5));
		object.setInstructorInfo(rs.getString(6));
		object.setImg(rs.getString(7));
		object.setPrice(rs.getInt(8));
		object.setcPost(rs.getTimestamp(9).toString());
		
		return object;
		
	}

}
