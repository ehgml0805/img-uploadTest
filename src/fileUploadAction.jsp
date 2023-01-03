<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.*" %>
<%@page import="com.oreilly.servlet.multipart.*" %>
<%
	//원본 requset 객체를 cos API로 랩핑
	//new MultipartRequest(원본requset,업로드 폴더,최대파일사이즈, 인코딩,중볻된이름 정책)
	//중복된 이름 정책: 같은 이름 파일(1.png가 두개면 뒤에건 1.1png 이런식으로 중복이 안되게 해줌)이 있을경우
	//프로젝트 안 upload폴더의 실제 물리적 위치를 반환
	String dir=request.getServletContext().getRealPath("/upload");
	int maxFileSize=1024*1024*100; //100mbyte
	DefaultFileRenamePolicy fp= new DefaultFileRenamePolicy();
	MultipartRequest mreq = new MultipartRequest(request,"dir",maxFileSize,"UTF-8",fp);
	
	//MultipartRequest로 원본requset를 랩핑 후에는 stream으로 받을 필요 없이
	//MultipartRequest api를 사용
	
	//input type=text
	String itemName = mreq.getParameter("itemName"); //MultipartRequest.getParameter
	
	//input type=file 바이너리 파일은 마임타입 형태의 파일로 변환되어 upload 폴더에 자동으로 저장됨
	String contentType=mreq.getContentType("itemMg");
	String originalFileName=mreq.getOriginalFileName("itemMg"); //원본 파일 이름
	String filesystemName=mreq.getFilesystemName("itemMg"); //저장된 파일 이름(DefaultFileRenamePolicy)
	
	System.out.println(itemName);
	System.out.println("문자열 매개값");
	System.out.println(contentType);
	System.out.println(originalFileName);
	System.out.println(filesystemName);
	
%>