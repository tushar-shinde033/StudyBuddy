package doubtdao;

import java.util.List;

import entities.AllCourses;
import entities.QuestionPostEntity;
import entities.SmSignUp;

public interface DoubtDao {
	public int insertDoubtsIntoDb(QuestionPostEntity obj);
	public List<QuestionPostEntity> getAllDoubts();
	public  int getTotalPostedQuestion();
	public int getTotalPostedSolution();
	public List<QuestionPostEntity> getAllDoubtsAndSolutionById(int id);
	public List<QuestionPostEntity> getAllSolutionAndDoubt();
	public void getTotalLike(int id);
	public void getTotalDisLike(int id);
	public int inserStudentData(SmSignUp object);
	public int validateStudent(String email, String password);
	public SmSignUp getUserDataByLoginDetail(String email, String password);
	public List<AllCourses>  getAllCourses();
	public List<AllCourses> getAllCoursesById(int id);
	public int postCoursesByAdmin(AllCourses object);
	public int deleteQuestionById(int id);
	public int deleteCourceById(int id);
	public List<AllCourses> getCoursesById(int id);
	public int updateCourceById(AllCourses object);
	public int addStudentIdFromCourceById(int buyId, int courceId);
	public int addSolutionById(String solution, int id);
	public List<QuestionPostEntity> getDoubtsBySearch(String title);

}
