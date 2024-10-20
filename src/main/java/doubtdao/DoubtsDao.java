package doubtdao;

import java.util.ArrayList;

import java.util.List;
import java.util.Map;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import entities.AllCourses;
import entities.QuestionPostEntity;
import entities.SmSignUp;
import entities.TotalQuestionStatus;

public class DoubtsDao implements DoubtDao {
	TotalQuestionStatus object = new TotalQuestionStatus();
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public DoubtsDao() {
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public DoubtsDao(JdbcTemplate jdbcTemplate) {
	}

	@Override
	public int insertDoubtsIntoDb(QuestionPostEntity obj) {
		String query = "INSERT INTO  user_question_post(title, details , expectation , tags) " + "VALUES (?, ?, ?, ?)";
		int status = this.jdbcTemplate.update(query, obj.getTitle(), obj.getDetails(), obj.getExpectation(),
				obj.getTags());
		return status;
	}

	@Override
	public List<QuestionPostEntity> getAllDoubts() {
		String query = "SELECT * FROM user_question_post ORDER BY id DESC";
		List<QuestionPostEntity> list = this.jdbcTemplate.query(query, new RowMapperImp());
		return list;
	}

	@Override
	public int getTotalPostedQuestion() {
		String query = "SELECT COUNT(title) FROM user_question_post";
		int totalPostedQuestion = this.jdbcTemplate.queryForObject(query, (rs, rowNum) -> rs.getInt(1));
		return totalPostedQuestion;
	}

	@Override
	public int getTotalPostedSolution() {
		String query = "SELECT COUNT(solution) FROM user_question_post";
		int totlaPostedSolution = this.jdbcTemplate.queryForObject(query, (rs, rowNum) -> rs.getInt(1));
		return totlaPostedSolution;
	}

	@Override
	public List<QuestionPostEntity> getAllDoubtsAndSolutionById(int id) {
		List<QuestionPostEntity> list;
		String query = "SELECT * FROM user_question_post WHERE id=?";
		RowMapper<QuestionPostEntity> rowMapper = new RowMapperImp();
		list = this.jdbcTemplate.query(query, rowMapper, id);
		return list;
	}

	@Override
	public List<QuestionPostEntity> getAllSolutionAndDoubt() {
		String query = "SELECT * FROM user_question_post";
		List<QuestionPostEntity> list = this.jdbcTemplate.query(query, new RowMapperImp());
		return list;
	}

	@Override
	public void getTotalLike(int id) {
		String query = "UPDATE user_question_post SET likedSolution =likedSolution +1 WHERE id=?";
		int like = this.jdbcTemplate.update(query, id);
		System.out.println(like);
	}

	@Override
	public void getTotalDisLike(int id) {
		String query = "UPDATE user_question_post SET disLikeSolution =disLikeSolution +1 WHERE id=?";
		int disLike = this.jdbcTemplate.update(query, id);
	}

	@Override
	public List<QuestionPostEntity> getDoubtsBySearch(String title) {
		String query = "SELECT *  FROM  user_question_post WHERE title=? ";
		List<QuestionPostEntity> list = jdbcTemplate.query(query, new Object[] { title }, new RowMapperImp());
		return list;
	}

	@Override
	public int inserStudentData(SmSignUp object) {
		String query = "INSERT INTO smuserdata(fname, lname, email, mob, password) VALUES (?, ?, ?, ?, ?)";
		int i = this.jdbcTemplate.update(query, object.getFname(), object.getLname(), object.getEmail(),
				object.getMob(), object.getPassword());
		return i;
	}

	@Override
	public int validateStudent(String email, String password) {
		int i = 0;
		try {
			String query = "select count(id) from smuserdata  where email=? and password=?";
			i = this.jdbcTemplate.queryForObject(query, Integer.class, email, password);
		} catch (EmptyResultDataAccessException e) {
			System.out.println(e.getLocalizedMessage());
		}
		return i;
	}

	@Override
	public SmSignUp getUserDataByLoginDetail(String email, String password) {
		SmSignUp user = new SmSignUp();
		String query = "SELECT id, fname, email, mob, createdAt, lname FROM smuserdata WHERE email=? && password =?";
		jdbcTemplate.queryForObject(query, new Object[] { email, password }, (rs, rowNum) -> {
			user.setId(rs.getInt("id"));
			user.setFname(rs.getString("fname"));
			user.setEmail(rs.getString("email"));
			user.setMob(rs.getLong("mob"));
			
			user.setCreatedAt(rs.getTimestamp("createdAt"));
			user.setLname(rs.getString("lname"));
			return user;
		});
		System.out.println("Impl" + user);
		return user;
	}

	@Override
	public List<AllCourses> getAllCourses() {
		List<AllCourses> list = new ArrayList<AllCourses>();
		String query = "SELECT * FROM courses";
		list = this.jdbcTemplate.query(query, new RowMapperAllCource());
		return list;
	}

	@Override
	public List<AllCourses> getAllCoursesById(int id) {
		AllCourses object = new AllCourses();
		String query = "SELECT * FROM courses WHERE id=?";
		List<AllCourses> list = this.jdbcTemplate.query(query, new RowMapperAllCource(), id);
		return list;
	}

	@Override
	public int postCoursesByAdmin(AllCourses object) {
		String query = "INSERT INTO courses(name , description , instructor , experience , instructor_info , img, price) VALUES (?, ?, ?, ?, ?, ?, ?)";
		int status = this.jdbcTemplate.update(query, object.getcName(), object.getcDescription(),
				object.getcInstructor(), object.getcExperience(), object.getInstructorInfo(), object.getImg(),
				object.getPrice());
		return status;
	}

	@Override
	public int deleteQuestionById(int id) {
		String query = "delete from user_question_post where id=?";
		int i = this.jdbcTemplate.update(query, id);
		return i;
	}

	@Override
	public int deleteCourceById(int id) {
		String query = "delete from courses where id=?";
		int i = this.jdbcTemplate.update(query, id);
		return i;
	}

	@Override
	public List<AllCourses> getCoursesById(int id) {
		String query = "SELECT * FROM courses WHERE id=?";
		List<AllCourses> list = this.jdbcTemplate.query(query, new RowMapperAllCource(), id);
		return list;
	}

	@Override
	public int updateCourceById(AllCourses object) {
		String query = "UPDATE courses SET name=?, description=?, instructor  =?, experience =?, instructor_info =?, img =?, price=? WHERE id=?";
		int status = jdbcTemplate.update(query, object.getcName(), object.getcDescription(), object.getcInstructor(),
				object.getcExperience(), object.getcInstructor(), object.getImg(), object.getPrice(), object.getId());
		return status;
	}

	@Override
	public int addStudentIdFromCourceById(int buyId, int courceId) {
		SmSignUp sm = new SmSignUp();
		String query = "UPDATE courses SET buyid=? WHERE id=?";
		int status = this.jdbcTemplate.update(query, buyId, courceId);
		return status;
	}

	@Override
	public int addSolutionById(String solution, int id) {
		String query = "update user_question_post set solution=? where id=?";
		int status = this.jdbcTemplate.update(query, solution, id);
		return status;
	}
}