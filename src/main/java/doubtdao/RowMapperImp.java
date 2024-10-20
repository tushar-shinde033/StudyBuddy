package doubtdao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import entities.QuestionPostEntity;

public class RowMapperImp implements RowMapper<QuestionPostEntity>{
	QuestionPostEntity obj; 
	@Override
	public QuestionPostEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
	    obj=new  QuestionPostEntity();
	obj.setId(rs.getInt(1));
	obj.setTitle(rs.getString(2));
	obj.setDetails(rs.getString(3));
	obj.setExpectation(rs.getString(4));
	obj.setTags(rs.getString(5));
	obj.setSolution(rs.getString(6));
	obj.setCretaedAt(rs.getTimestamp(7));
	obj.setLikeSolution(rs.getInt(8));
	obj.setDisLikeSolution(rs.getInt(9));
	   return obj;
	}

}
