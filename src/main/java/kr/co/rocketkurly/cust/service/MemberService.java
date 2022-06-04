package kr.co.rocketkurly.cust.service;

import java.util.Random;

import javax.inject.Inject;

import org.apache.ibatis.exceptions.PersistenceException;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.PortResolverImpl;
import org.springframework.stereotype.Component;

import kr.co.rocketkurly.cust.dao.MemberDAO;
import kr.co.rocketkurly.cust.domain.MemberDomain;
import kr.co.rocketkurly.cust.vo.MemberVO;

@Component
public class MemberService {

	@Autowired(required = false)
	private MemberDAO mDAO;

	@Inject
	BCryptPasswordEncoder pwEncoder;

	/**
	 * 로그인 확인 service method
	 * 
	 * @param mVO
	 * @return
	 */
	public MemberDomain loginCheck(MemberVO mVO) {

		MemberDomain md = null;
		int cnt = 0;
		boolean pwFlag = false;

		try {

			md = mDAO.selectLoginCheck(mVO.getId());
			if (md != null) {
				pwFlag = pwCheck(mVO.getPw(), md.getPw());
			}
		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		if (!pwFlag) {

			md = null;

		} else {

			cnt = mDAO.insertUserHistory(md.getMember_id());

		} // end else

		return md;

	}// loginCheck

	/**
	 * ID 찾기 service method
	 * 
	 * @param mVO
	 * @return
	 */
	public String findID(MemberVO mVO) {

		String findID = "";

		try {

			findID = mDAO.selectFindID(mVO);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		if (findID == null) {

			findID = "fail";

		} // end else

		return findID;

	}// findID

	/**
	 * 비밀번호 찾기 service method
	 * 
	 * @param mVO
	 * @return
	 */
	public String findPW(MemberVO mVO) {

		String id = "";
		String pw = "fail";

		try {

			id = mDAO.selectFindPW(mVO);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		if (id != null) {

			pw = modifyPW(mVO);

		} // end if

		return pw;

	}// findID

	/**
	 * 비밀번호 변경 service method
	 * 
	 * @param mVO
	 * @return
	 */
	public String modifyPW(MemberVO mVO) {

		String pw = "";
		String cipher = "";

		try {

			pw = tempPassword(16);
			cipher = pwEncoder.encode(pw);
			mVO.setPw(cipher);

			mDAO.updatePW(mVO);

		} catch (PersistenceException pe) {
			pe.printStackTrace();
		}

		return pw;
	}

	/**
	 * 회원가입 service method
	 * 
	 * @param mVO
	 * @return
	 */
	public int signUp(MemberVO mVO) {

		int cnt = 0;

		try {

			String inputPass = mVO.getPw();
			String pass = pwEncoder.encode(inputPass);

			mVO.setPw(pass);

			cnt = mDAO.insertMember(mVO);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		return cnt;

	}// signUp

	/**
	 * 유저 정보 조회 service method
	 * 
	 * @param id
	 * @return
	 */
	public MemberDomain memberInfo(String id) {

		MemberDomain md = null;

		try {

			md = mDAO.selectLoginCheck(id);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		return md;

	}// memberInfo

	/**
	 * ID 중복확인 service method
	 * 
	 * @param id
	 * @return
	 */
	public String idCheck(String id) {

		String checkID = "";

		try {

			checkID = mDAO.selectIdCheck(id);

		} catch (PersistenceException pe) {

			pe.printStackTrace();

		} // end catch

		JSONObject jsonObj = new JSONObject();

		jsonObj.put("checkID", checkID);

		checkID = jsonObj.toJSONString();

		return checkID;
	}

	/**
	 * 비밀번호 확인 service method
	 * 
	 * @param inputPw
	 * @param custPw
	 * @return
	 */
	public boolean pwCheck(String inputPw, String custPw) {

		boolean pwFlag = pwEncoder.matches(inputPw, custPw);

		return pwFlag;

	}// pwCheck

	/**
	 * 임시비밀번호 생성 method
	 * 
	 * @param leng
	 * @return
	 */
	public static String tempPassword(int length) {
		int index = 0;
		char[] charArr = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a',
				'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
				'w', 'x', 'y', 'z' };

		StringBuffer password = new StringBuffer();
		Random random = new Random();

		for (int i = 0; i < length; i++) {
			double rd = random.nextDouble();
			index = (int) (charArr.length * rd);

			password.append(charArr[index]);

		} // end for

		return password.toString();

	}// tempPassword

}
