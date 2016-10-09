package dev.mvc.camera;

import java.util.List;




public interface CameraDAOInter {
  
  /**
   * ���ڵ带 ����մϴ�.
   * <insert id="create" parameterType="CameraVO">
   * @param vo ����� ������ ��ü
   * @return ��ϵ� ���ڵ� ��
   */
  public int create(CameraVO vo);
  
  
  
  /**
   * ��ü ���
   * <select id="list" resultType="CameraVO">
   * @return �Խñ� ���
   */
  public List<CameraVO> list();
  
  /**
   * ȸ�� ���� ��ȸ
   * <select id="read" resultType="CameraVO" parameterType="int">
   * @param ctno
   * @return
   */
  public CameraVO read(int ctno); 
}
