package dev.mvc.camera;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.beans.factory.annotation.Qualifier;

@Controller
public class CameraCont {
  @Autowired
  @Qualifier("dev.mvc.camera.CameraDAO")
  private CameraDAOInter cameraDAO;

  public CameraCont() {
    System.out.println("--> CameraCont created.");
  }

  /**
   * ��ü ����� ����մϴ�.
   * 
   * @return
   */
  @RequestMapping(value = "/camera/list.do", method = RequestMethod.GET)
  public ModelAndView list() {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/camera/list"); // /webapp/member/list.jsp
    mav.addObject("list", cameraDAO.list());

    return mav;
  }

  @RequestMapping(value = "/camera/create.do", method = RequestMethod.GET)
  public ModelAndView create() {
    System.out.println("--> create() GET called.");
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/camera/create"); // /webapp/member/create.jsp

    return mav;
  }

  @RequestMapping(value = "/camera/create.do", method = RequestMethod.POST)
  public ModelAndView create(CameraVO cameraVO) {
    System.out.println("--> create() POST called.");
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/camera/message"); // webapp/member/message.jsp

    ArrayList<String> msgs = new ArrayList<String>();
    ArrayList<String> links = new ArrayList<String>();

    if (cameraDAO.create(cameraVO) == 1) {
      msgs.add("��� ó�� �Ϸ��߽��ϴ�.");
      msgs.add("�����մϴ�.");
      links.add("<button type='button' onclick=\"location.href='./login.do'\">�α���</button>");
      links.add("<button type='button' onclick=\"location.href='./home.do'\">Ȩ������</button>");
    } else {
      msgs.add("��Ͽ� �����߽��ϴ�.");
      msgs.add("�˼������� �ٽ��ѹ� �õ����ּ���.");
      links.add("<button type='button' onclick=\"history.back()\">�ٽýõ�</button>");
      links.add("<button type='button' onclick=\"location.href='./home.do'\">Ȩ������</button>");
    }

    links.add("<button type='button' onclick=\"location.href='./list.do'\">���</button>");

    mav.addObject("msgs", msgs);
    mav.addObject("links", links);

    return mav;
  }
  
  @RequestMapping(value = "/camera/read.do", method = RequestMethod.GET)
  public ModelAndView read(int ctno) {
    ModelAndView mav = new ModelAndView();
    mav.setViewName("/camera/read");
    mav.addObject("cameraVO", cameraDAO.read(ctno));

    return mav;
  }
}
