
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.startup.Catalina;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mysql.fabric.xmlrpc.base.Array;
import com.sun.image.codec.jpeg.*;//sun鍏徃浠呮彁渚涗簡jpg鍥剧墖鏂囦欢鐨勭紪鐮乤pi

import chuangxinxuetang.domain.Course;
import chuangxinxuetang.domain.FirstCourse;
import chuangxinxuetang.domain.User;
import chuangxinxuetang.domain.Video;
import chuangxinxuetang.service.CourseService;
import chuangxinxuetang.service.UserService;
import chuangxinxuetang.service.VideoService;
import chuangxinxuetang.service.firstCoursesService;
import chuangxinxuetang.utils.JsonUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * @author Guozhen_Zhao
 * 鍒涘缓鏃堕棿锛�2018骞�3鏈�17鏃�  涓嬪崍2:22:45
 * 澶囨敞锛�
 */
@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static final String JPG = "image/jpeg;charset=GB2312";
	private static final String GIF = "image/gif;charset=GB2312";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String methodName = request.getParameter("method");

		try {
			Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class,
					HttpServletResponse.class);
			//鑾峰彇绉佹湁鎴愬憳鍙橀噺
			method.setAccessible(true);
			method.invoke(this, request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException(e);

		}
	}

	UserService userService = new UserService();
	CourseService courseService = new CourseService();
	VideoService videoService = new VideoService();
	firstCoursesService firstCoursesService = new firstCoursesService();

	//鐢ㄦ埛娉ㄥ唽椤甸潰
	public void registerPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("杩涘叆浜嗐�傘�傘�傘��");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String mail = request.getParameter("mail");
		String passWord = request.getParameter("password");
		String passwordTwo = request.getParameter("passwordTwo");

		String message = "";
		if (firstName.equals("") && lastName.equals("")) {
			message = "濮撳悕涓嶄负绌�";
		} else if (passWord.equals("")) {
			message = "瀵嗙爜涓嶈兘涓虹┖";
		} else if (!(passWord.equals(passwordTwo))) {
			message = "涓ゆ瀵嗙爜涓嶄竴鑷�";
		} else {
			User user = new User();
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setMail(mail);
			user.setPassword(passWord);
			Long info = userService.selectCountByMail(user);

			if (info == 0) {
				System.out.println("鍒ゆ柇鎴愬姛銆傘�傘��");
				userService.register(user);
			} else {
				message = "鐢ㄦ埛閭宸插瓨鍦�";
			}
		}
		request.setAttribute("message", message);
		if (message.equals("")) {
			System.out.println("杞埌鐧婚檰椤甸潰銆傘�傘��");
			request.getRequestDispatcher("signin.jsp").forward(request, response);
			return;
		}
		System.out.println("singup...");
		request.getRequestDispatcher("signup.jsp").forward(request, response);

	}

	//鐢ㄦ埛浣跨敤閭鐧婚檰
	public void loginPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("杩涘叆浜嗐�傘�傘�傘��");
		String mail = request.getParameter("mail");
		String passWord = request.getParameter("password");

		String message = "";

		User user = userService.login(mail, passWord);
		if (user.getPassword().equals(passWord)) {
			if (user.getPrivilege() == 1) {
				request.getRequestDispatcher("menu.jsp").forward(request, response);
				return;
			} else if (user.getPrivilege() == 2) {
				request.getRequestDispatcher("index.jsp").forward(request, response);
				return;
			}
		} else {
			message = "閭鎴栧瘑鐮侀敊璇�";
		}

		request.setAttribute("message", message);
		request.getRequestDispatcher("signin.jsp").forward(request, response);

	}

	//杞彂鍒版坊鍔犺绋嬮〉
	public void creatCourse(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("creatCourse.jsp").forward(request, response);
	}

	//杞彂鍒版坊鍔犺棰戦〉
	public void uploadVideo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("uploadVideo.jsp").forward(request, response);
	}

	//娣诲姞璇剧▼
	public void addCourseMessage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//鎶婁笂浼犵殑鏂囦欢瀛樻斁鍒伴」鐩笅鐨剈pload鏂囦欢澶归噷闈紝鑰屼笂闈㈢殑浠ｇ爜鏄幏鍙杣pload鍦ㄩ」鐩笅鐨勮矾寰勩��
		String savePath = this.getServletContext().getRealPath("upload");
		System.out.println(savePath);
		File file = new File(savePath);

		List<String> paths = new ArrayList<>();
		if (!file.exists() && !file.isDirectory()) {
			file.mkdir(); //鍒涘缓鎸囧畾璺緞鍚嶇О瀵瑰簲鐨勭洰褰�
		}

		//鍒涘缓FileItem瀵硅薄鐨勫伐鍘�
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// ServletFileUpload 璐熻矗澶勭悊涓婁紶鐨勬枃浠舵暟鎹紝骞跺皢琛ㄥ崟涓瘡涓緭鍏ラ」灏佽鎴愪竴涓狥ileItem 瀵硅薄涓�
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("UTF-8");
		if (!ServletFileUpload.isMultipartContent(request)) {
			return;
		}

		List<FileItem> list = null;
		try {
			list = upload.parseRequest(request);
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		List<String> values = new ArrayList<>();

		for (FileItem item : list) {
			if (item.isFormField()) {
				String name = item.getFieldName();
				//瑙ｅ喅鏅�氳緭鍏ラ」鐨勬暟鎹殑涓枃涔辩爜闂
				String value = item.getString("UTF-8");

				values.add(value);
			} else {
				String filename = item.getName();
				System.out.println(filename);
				if (filename == null || filename.trim().equals("")) {
					continue;
				}

				filename = filename.substring(filename.lastIndexOf("\\") + 1);
				//鑾峰彇item涓殑涓婁紶鏂囦欢鐨勮緭鍏ユ祦
				InputStream in = item.getInputStream();
				//鍒涘缓涓�涓枃浠惰緭鍑烘祦
				FileOutputStream out = new FileOutputStream(savePath + "\\" + filename);
				paths.add(filename);
				//鍒涘缓涓�涓紦鍐插尯
				byte buffer[] = new byte[1024];
				//鍒ゆ柇杈撳叆娴佷腑鐨勬暟鎹槸鍚﹀凡缁忚瀹岀殑鏍囪瘑
				int len = 0;
				//寰幆灏嗚緭鍏ユ祦璇诲叆鍒扮紦鍐插尯褰撲腑锛�(len=in.read(buffer))>0灏辫〃绀篿n閲岄潰杩樻湁鏁版嵁
				while ((len = in.read(buffer)) > 0) {
					//浣跨敤FileOutputStream杈撳嚭娴佸皢缂撳啿鍖虹殑鏁版嵁鍐欏叆鍒版寚瀹氱殑鐩綍(savePath + "\\" + filename)褰撲腑
					out.write(buffer, 0, len);
				}

			}
		}
		String courseName = values.get(0);
		String courseDesc = values.get(1);
		String courseImgAddress = paths.get(0);
		String courseTeacher = values.get(3);
		String courseType = values.get(4);
		String secondId = values.get(5);

		String message = "";
		if (courseName.equals("")) {
			message = "璇剧▼鍚嶇О涓虹┖";
		} else if (courseType.equals("")) {
			message = "璇剧▼鎵�灞炰负绌�";
		} else if (secondId.equals("")) {
			message = "浜岀骇ID涓虹┖";
		}
		if (message.equals("")) {
			Course course = new Course();
			course.setCourseName(courseName);
			course.setCourseDesc(courseDesc);
			course.setCourseTeacher(courseTeacher);
			course.setCourseType(courseType);
			course.setSecondId(Integer.parseInt(secondId));

			course.setCourseImgAddress(courseImgAddress);

			courseService.register(course);
			request.getRequestDispatcher("products.jsp").forward(request, response);
			return;
		} else {
			request.getRequestDispatcher("creatCourse.jsp").forward(request, response);
			return;
		}

	}

	//娣诲姞瑙嗛
	public void addVideoMessage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//鎶婁笂浼犵殑鏂囦欢瀛樻斁鍒伴」鐩笅鐨剈pload鏂囦欢澶归噷闈紝鑰屼笂闈㈢殑浠ｇ爜鏄幏鍙杣pload鍦ㄩ」鐩笅鐨勮矾寰勩��
		String savePath = this.getServletContext().getRealPath("upload");
		System.out.println(savePath);
		File file = new File(savePath);

		List<String> paths = new ArrayList<>();
		if (!file.exists() && !file.isDirectory()) {
			file.mkdir(); //鍒涘缓鎸囧畾璺緞鍚嶇О瀵瑰簲鐨勭洰褰�
		}

		//鍒涘缓FileItem瀵硅薄鐨勫伐鍘�
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// ServletFileUpload 璐熻矗澶勭悊涓婁紶鐨勬枃浠舵暟鎹紝骞跺皢琛ㄥ崟涓瘡涓緭鍏ラ」灏佽鎴愪竴涓狥ileItem 瀵硅薄涓�
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setHeaderEncoding("UTF-8");
		if (!ServletFileUpload.isMultipartContent(request)) {
			return;
		}

		List<FileItem> list = null;
		try {
			list = upload.parseRequest(request);
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		List<String> values = new ArrayList<>();

		for (FileItem item : list) {
			//if鏄皢琛ㄥ崟涓殑鎵�鏈夊厓绱犳斁鍒颁簡涓�涓竴涓猯ist闆嗗悎涓�
			if (item.isFormField()) {
				String name = item.getFieldName();
				//瑙ｅ喅鏅�氳緭鍏ラ」鐨勬暟鎹殑涓枃涔辩爜闂
				String value = item.getString("UTF-8");

				values.add(value);
			} else {
				//else鍐呯殑鍐呭鏀惧埌鏂囦欢澶逛腑锛宔lse鍜宨f蹇呴』閮芥墽琛�
				String filename = item.getName();
				System.out.println(filename);
				if (filename == null || filename.trim().equals("")) {
					continue;
				}

				filename = filename.substring(filename.lastIndexOf("\\") + 1);
				//鑾峰彇item涓殑涓婁紶鏂囦欢鐨勮緭鍏ユ祦
				InputStream in = item.getInputStream();
				//鍒涘缓涓�涓枃浠惰緭鍑烘祦
				FileOutputStream out = new FileOutputStream(savePath + "\\" + filename);
				paths.add(filename);
				//鍒涘缓涓�涓紦鍐插尯
				byte buffer[] = new byte[1024];
				//鍒ゆ柇杈撳叆娴佷腑鐨勬暟鎹槸鍚﹀凡缁忚瀹岀殑鏍囪瘑
				int len = 0;
				//寰幆灏嗚緭鍏ユ祦璇诲叆鍒扮紦鍐插尯褰撲腑锛�(len=in.read(buffer))>0灏辫〃绀篿n閲岄潰杩樻湁鏁版嵁
				while ((len = in.read(buffer)) > 0) {
					//浣跨敤FileOutputStream杈撳嚭娴佸皢缂撳啿鍖虹殑鏁版嵁鍐欏叆鍒版寚瀹氱殑鐩綍(savePath + "\\" + filename)褰撲腑
					out.write(buffer, 0, len);
				}

			}
		}

		String id = values.get(0);
		String videoDesc = values.get(1);
		String videoAddress = savePath + "\\" + paths.get(0);

		String message = "";
		if (id.equals("")) {
			message = "";
		}
		if (message.equals("")) {
			Video video = new Video();
			video.setId(Integer.parseInt(id));
			video.setVideoDesc(videoDesc);
			video.setVideoAddress(videoAddress);

			videoService.register(video);
			request.getRequestDispatcher("products.jsp").forward(request, response);
			return;
		} else {
			request.getRequestDispatcher("uploadVideo.jsp").forward(request, response);
			return;
		}
	}

	//鏌ヨ璇剧▼淇℃伅
	public void selectCourseMessage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String courseName = request.getParameter("courseName");
		String courseTeacher = request.getParameter("courseTeacher");

	}

	//鏄剧ず鍥剧墖
	public void showCourseMessage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String javaSE = request.getParameter("javaSE");
		List<Course> imgAddress = new ArrayList<Course>();

		imgAddress = courseService.selectImgAddressByCourseType(javaSE);
		System.out.println(imgAddress);
		request.setAttribute("listImage", imgAddress);
		request.getRequestDispatcher("/products.jsp").forward(request, response);
		/*for (Course a : imgAddress) {
			String imagePath = a.getCourseImgAddress();
			request.setAttribute("imagePath", imagePath);
		}*/
	}

	//涓嬫媺鍒楄〃瀹炵幇
	public void selectFirstCourseMessage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("宸茶繘鍏ャ�傘�傘��");
		List<FirstCourse> firstCoursesList = new ArrayList<FirstCourse>();
		
		firstCoursesList = firstCoursesService.selectFirstCoursesName();
		
		JSONArray jsonData = JSONArray.fromObject(firstCoursesList);
		System.out.println(jsonData.toString());
		PrintWriter out = response.getWriter();
		out.print(jsonData);
	}

}
