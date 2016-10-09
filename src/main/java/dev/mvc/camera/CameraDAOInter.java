package dev.mvc.camera;

import java.util.List;




public interface CameraDAOInter {
  
  /**
   * 레코드를 등록합니다.
   * <insert id="create" parameterType="CameraVO">
   * @param vo 등록할 데이터 객체
   * @return 등록된 레코드 수
   */
  public int create(CameraVO vo);
  
  
  
  /**
   * 전체 목록
   * <select id="list" resultType="CameraVO">
   * @return 게시글 목록
   */
  public List<CameraVO> list();
  
  /**
   * 회원 정보 조회
   * <select id="read" resultType="CameraVO" parameterType="int">
   * @param ctno
   * @return
   */
  public CameraVO read(int ctno); 
}
