package controller;

import java.sql.Timestamp;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import org.eclipse.jdt.internal.compiler.IDebugRequestor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;

import entities.*;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import doubtdao.DoubtsDao;



@Controller
public class NavController {
	ApplicationContext context= new ClassPathXmlApplicationContext("config.xml");
   	DoubtsDao doubtDao= context.getBean("beanDao", 	DoubtsDao.class);
   	
   	@RequestMapping("/test")
   	public String getTestPage() {
   		System.out.println("i am working");
   		return "testing";
   	}
	@RequestMapping(value="about-siddiqui-technical")
	public String getAbout() {
	
		return "about";
	}
	
	
	@RequestMapping("/Doubt-post-section")
	public String getDobutPage() {
		return "ask_questions";
	}
	
	@RequestMapping("/post-doubts")
	public String getPostDoubtPage() {
		return "postquestion";
	}
	
	
	@PostMapping("/submitdoubts")
	public String getPostQuestionPage(@ModelAttribute QuestionPostEntity objd, HttpSession session){
           String message="Doubt posted...........";
           session.setAttribute("message", message);
           System.out.print(objd);
       	context=  new ClassPathXmlApplicationContext("config.xml");
       	DoubtsDao doubtDao= context.getBean("beanDao", 	DoubtsDao.class);
       	doubtDao.insertDoubtsIntoDb(objd);
   
		return "redirect:/All-posted-doubts";
	}
	

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getAdminPage(Model model) {
		
		return "adminlogindoubt";
	}
	
	
	//Method for the validating admin
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("loginBean") AdminAccount adminAccount, HttpSession session) {
		if(adminAccount.getUserName()!=null & adminAccount.getPassword()!=null) {
//			String msg="Login Suceess";
			String admin="admin";
			if(adminAccount.getUserName().equals("admin") && adminAccount.getPassword().equals("admin")) {
				session.setAttribute("adminMsg", admin);
				return "redirect:http://localhost:8879/sm/Admin-Dashboard";
			}
			else
			{
				String error="Bad credential due to wrong id and password";
				return "redirect:/login?msg="+error;
			}}
		else {
			model.addAttribute("error", "Please enter Details");
			return "adminlogindoubt";
		}
		
	}
	
	@RequestMapping("/Admin-Dashboard")
	public String getLoginDashBoard(TotalQuestionStatus tqs, Model model) {
		context=  new ClassPathXmlApplicationContext("config.xml");
		DoubtsDao doubtDao= context.getBean("beanDao", 	DoubtsDao.class);
	 int dos= doubtDao.getTotalPostedQuestion();
	 int totalAnswerPosted=doubtDao.getTotalPostedSolution();
	 int totalPendingAnswerPosted=dos-totalAnswerPosted;
	 model.addAttribute("totalPostedQuestion", dos);
	 model.addAttribute("totalPostedAnswer", totalAnswerPosted);
	 model.addAttribute("totalPendingAnswerPosted", totalPendingAnswerPosted);

//	 tqs.setTotalAnswerPosted(doubtDao.getTotalPostedSolution());
		return "LoginDashboard";
		
		
	}
	
	
	@RequestMapping("/All-posted-doubts")
	public String getAllPostedQuestion(Model model) {
       List<QuestionPostEntity>list=doubtDao.getAllDoubts();
       model.addAttribute("alldoubts", list);
       System.out.println(list);
		return "All_doubts_question_posted";
	}
	
	
	@RequestMapping("/logout")
	public String logoutAdmin(HttpSession session) {
		String adminMesg="Logout Successfully";
		session.setAttribute("msg", adminMesg);
		session.invalidate();
	return	"redirect:/login?msg="+adminMesg;
	}
	
	@RequestMapping("/error")
	public String errorPage() {
	int statu=	doubtDao.getTotalPostedQuestion(); 
    int status=	doubtDao.getTotalPostedSolution();
System.out.println(statu);
System.out.println(status);
		
		return "error";
		
	}
	
	
	@RequestMapping("/add-solution")
	public String addSolution() {
		return "postSolution";
	}
	
	@RequestMapping("/view-solution")
	public String viewSolution(HttpServletRequest request, Model model) {
	int id=Integer.parseInt(request.getParameter("id"));
		context=  new ClassPathXmlApplicationContext("config.xml");
		DoubtsDao doubtDao= context.getBean("beanDao", 	DoubtsDao.class);
	 List<QuestionPostEntity> list= doubtDao.getAllDoubtsAndSolutionById(id);
	 model.addAttribute("allquestionanswer", list);
		return "ViewSolution";
	}
	
	
	@RequestMapping("/view-all-doubt-and-solution")
	public String viewAllSolutionAndDoubt(Model model) {
	    List<QuestionPostEntity>list=doubtDao.getAllDoubts();
	    System.out.println(list);
	       model.addAttribute("alldoubts", list);
		return "alldoubtandsolution";
	}
	
    @PostMapping("likesolution/{id}/like")
	public String getLikeSolutio(@PathVariable("id") int id) {
	
	System.out.print(id);
	 
//	 model.addAttribute("totalLikeSolution", likeSolution);
//		System.out.print("working like");
		doubtDao.getTotalLike(id);
		return "redirect:/view-all-doubt-and-solution";
	}
    
    @PostMapping("/dislikesolution/{id}/dislike")
    public String getTotalDisLike(@PathVariable("id") int id) {
    	  doubtDao.getTotalDisLike(id);
    	return "redirect:/view-all-doubt-and-solution";
    }
    
    
    @RequestMapping("/admin-view-all-doubts-solution")
    public String getComplete(Model model) {
    	List<QuestionPostEntity>list=doubtDao.getAllDoubts();
//	    System.out.println(list);
	       model.addAttribute("alldoubts", list);
    	return "viewAllDoubtsInTable"; 
    }
    
    @RequestMapping("/admin-add-solution-doubts/{id}")
    public String addSolutionOfDoubts(@PathVariable("id") int id, Model model) {
    	List<QuestionPostEntity>list=doubtDao.getAllDoubtsAndSolutionById(id);
//	    System.out.println(list);
	       model.addAttribute("alldoubts", list);
    	System.out.println(id);
    	return "AddSolutionOfDoubts"; 
    }
    

    @PostMapping("/admin-add-solution-doubts")
    public String addSolutionToDoubt(@RequestParam("solution") String solution, @RequestParam("id") int id, HttpSession session){
     int status=   doubtDao.addSolutionById(solution, id);
//    	Timestamp timestamp = Timestamp.valueOf(onk.getCretaedAt());
//        System.out.println(id+"working" +solution);
        if(status>0) {
 
        	String msg="Updated Successfully.....";
        	session.setAttribute("status",msg);
        	 return "redirect:/admin-view-all-doubts-solution";
        }
        String msg="Something wrong please try again...!";
        session.setAttribute("msg", msg);
        return "redirect:/admin-view-all-doubts-solution";
    }

	//SM project method=========================================================================
    
    @GetMapping(value = "/login-sm")
    public String getLoginPage() {
    	return "login";
    }
    
    @GetMapping(value = "/signup-sm")
    public String getSignUp() {
    	return "signup";
    }
    
   @PostMapping(value = "/signup")
   public String storeStudentData(@ModelAttribute SmSignUp obj, HttpServletRequest session) {
	   try {
	   String message="Please login with register email and password";
	  int i= doubtDao.inserStudentData(obj);
	  if(i>0) {
		  session.setAttribute("msg", message);
		  return "redirect:login-sm"; 
	  }
	  
	   }
	   catch (EmptyResultDataAccessException e) {
		  String errorMessage="Invalid email and password...";
	}
	return "redirect:signup-sm";
	  
   }
   
   @RequestMapping("/student-dashboard") 
   public String getDashboardStudent() {
	   return "dashboarduser";
   }
   
   @PostMapping(value="/validate-student")
   public String validateStudent(@RequestParam("mail")String email, @RequestParam("pass")String password, Model model, HttpSession session) {
//       System.out.println(email + " " + password);
       String message = "Wrong id and Password";
   	  
       int i = doubtDao.validateStudent(email, password);
       SmSignUp obj = doubtDao.getUserDataByLoginDetail(email, password);
       if (i >= 1 && obj != null) {
           session.setAttribute("data", obj);
           return "redirect:student-coursce";
       }
       
      session.setAttribute("msg", message);
       return "redirect:login-sm?msg"+message;
   }
   
   @RequestMapping("/logout-student")
   public String  studentLogout(HttpSession session, RedirectAttributes redirectAttributes) {
	   session.invalidate();
        redirectAttributes.addFlashAttribute("msg", "Logout successfully...");
	   return  "redirect:http://localhost:8879/sm/login-sm";
   }
   
   
   @RequestMapping("/student-coursce")
   public String getPageAfterLogin() {
	   return "redirect:/";
   }
   
   @GetMapping("/")
   public String getHomePage(Model model) {
	List<AllCourses>list=   doubtDao.getAllCourses();
	model.addAttribute("listCource", list);
	return   "index";
   }
   
   @GetMapping("/delete-doubt/{id}")
   public String deleteDoubtById(RedirectAttributes request, @PathVariable("id")int ids) {

	int i= this.doubtDao.deleteQuestionById(ids);
	  if(i>0) {
		 request.addFlashAttribute("msg", "deleted........");
		 return "redirect:/admin-view-all-doubts-solution";
	  }
		 request.addFlashAttribute("msg", "Something wrong try again..!");
	 return "redirect:/admin-view-all-doubts-solution";
   }
   
   
   
   
   
   /////////Coursces page controller///////////
   @GetMapping("/cource")
   public String getCource(@RequestParam("id") int id, HttpSession session) {
       List<AllCourses> list = doubtDao.getAllCoursesById(id);
      
       session.setAttribute("cource", list);
       return "redirect:/cource-detail";
   }

   @GetMapping("/cource-detail")
   public String courceDetail(RedirectAttributes redirectAttributes, Model model) {
      return "coursePages/c";
   }
   
   @GetMapping("/cource-detail-Java")
   public String courceDetailJava(RedirectAttributes redirectAttributes, Model model) {
      return "coursePages/java";
   }
   
   @GetMapping("/cource-detail-Spring")
   public String courceDetailSpring(RedirectAttributes redirectAttributes, Model model) {
      return "coursePages/spring";
   }

   
//   @RequestMapping("about-css")
//   public String getCss() {
//	   return "coursePages/css";
//   }
//   
//   @RequestMapping("about-html")
//   public String getHtml() {
//	   return "coursePages/html";
 
   
   @RequestMapping("/buy-now")
   public String getReact() {
	   
	   return "coursePages/card-buy";
   }
   
   @RequestMapping("/confirm-buy")
   public String confirmBuy() {
	  
       return "redirect:/student-dashboard";
	   
   }
   
   @RequestMapping("/post-course")
   public String postCourse() {
	return "postCourse";
	   
   }
   
   @PostMapping("/post-course-by-admin")
   public String postCourse(@ModelAttribute AllCourses object, HttpSession session) {
	int i=    doubtDao.postCoursesByAdmin(object);
	if(i>0) {
		session.setAttribute("Msg", "Posted................");
		return "redirect:http://localhost:8879/sm/Admin-Dashboard";
	}
//	System.out.print(i);
//	System.out.println(object);
       return "postCourse";
	   
   }
   
   
   @RequestMapping("/view-all-cources-admin")
   public String getAllCourcePostedByAdmin(Model model) {
	   List<AllCourses>list=   doubtDao.getAllCourses();
		model.addAttribute("listCource", list);
	   return "viewallcourseadmin";
   }
   
   @GetMapping("/delete-course/{id}")
   public String deleteCourceById(RedirectAttributes request, @PathVariable("id")int ids) {
   System.out.print(ids);
	int i= this.doubtDao.deleteCourceById(ids);
	  if(i>0) {
		 request.addFlashAttribute("msg", "deleted........");
		 return "redirect:/view-all-cources-admin";
	  }
		 request.addFlashAttribute("msg", "Something wrong try again..!");
	 return "redirect:/view-all-cources-admin";
   }
   
   @RequestMapping("/edit-cource-admin/{id}")
   public String getCourceById(RedirectAttributes attribute, @PathVariable("id") int id, Model model) {
	 List<AllCourses>list=  doubtDao.getCoursesById(id);
	model.addAttribute("courcebyid", list);
	   System.out.println(id);
	 return "editCource";  
   }
   
  @RequestMapping(value = "/update-course-admin", method = RequestMethod.POST)
  public String updateCourceByAdmin(AllCourses object, BindingResult br, jakarta.servlet.http.HttpServletRequest request, HttpSession session, 
		  @RequestParam("cName")String cName, @RequestParam("cDescription")String cDescription, @RequestParam("cPost") String cPost,
		  @RequestParam("cInstructor")String cInstructor, @RequestParam("cExperience")String cExperience, @RequestParam("instructorInfo")String instructorInfo, 
		  @RequestParam("img")String img, @RequestParam("price")int price) {
	  int id=Integer.parseInt(request.getParameter("id"));

	  object.setId(id);
	  object.setcName(cName);
	  object.setcDescription(cDescription);
	  object.setcPost(cPost);
	  object.setcInstructor(cInstructor);
	  object.setcExperience(cExperience);
	  object.setInstructorInfo(instructorInfo);
	  object.setImg(img);
	  object.setPrice(price);
	  System.out.println(object);
	  int status=	  doubtDao.updateCourceById(object);
	  if(status>0) {
		  String msg="Course details updated.......";
		  session.setAttribute("msg", msg);
		  return "redirect:view-all-cources-admin";
	  }
	  String msg="Something wrong Course details not updated...!";
	  session.setAttribute("msg", msg);
	    return "redirect:view-all-cources-admin";
	  }
  @RequestMapping("/watch-course")
  public String getVideosToStudents() {
  	return "WatchVideo";
  }
  
  
  @RequestMapping("/search")
//  @ResponseBody
  public String getUserTitleBySearch(@RequestParam("query")String query, Model model) {
  List<QuestionPostEntity>list=	  doubtDao.getDoubtsBySearch(query);
  
  model.addAttribute("searchresult", list);
//  System.out.println(list +"Controller working");
//	  String query=request.getParameter("query");
//	  System.out.println(query);
//	  doubtDao.getDoubtsBySearch();
	  return "usersearchresult";
  }
  
  @RequestMapping("/report-issue")
  public String getRefortForm() {
	  System.out.println("I am working right now");
	  return "feedback-form";
  }
}


 


 	

