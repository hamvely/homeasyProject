<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

가구는 집이지!

	<!-- 	
		1) 새로 워크스페이스 만들어서 이클립스로 열기
		
		2) 워크스페이스 셋팅하기 (워크스페이스 : 작업환경)
		   2_1) 웹 애플리케이션을 하기 위해 java EE 환경으로 설정
		   
		   2_2) 보여질 UI 탭들 셋팅 하기  [Window] - [Show View]
		        (탭 : Project Explorer, Navigator, Console, Problems, Servers)
		           
		   2_3) 인코딩 설정 및 서버 Runtime Environments 셋팅 [Window] - [Preferences]
		     
		        2_3_1) 인코딩 설정  : 영어, 숫자, 한글 등 모든 문자셋을 사용할 수 있도록 UTF-8로 셋팅
				       (General - Workspace)
				       (General - Editors - Text Editors - Spelling)
				       (Web - CSS Files, HTML Files, JSP Files)
				       (XML - XML Files)
				       (JSON - JSON Files)
		     
		     	2_3_2) 서버 Runtime 잡기 : 이클립스에서 서버를 실행할 수 있도록 연동하는 과정 
		       		   (Server - Runtime Environments)
		       		   > Add 클릭 > 설치한 아파치 톰캣과 동일한 버전 선택 > Next 
		       		   > Name 수정 가능(안하면 기본값) > Browse 클릭 > 설치한 아파치 톰캣 폴더 선택  > Finish
		       		
		       		   
		3) 서버 생성하기 
		   3_1) [New] - [Server] 
		   
		   3_2) 창에 기본적으로 2_3_2번 과정에서 셋팅해놓은 Runtime이 잡혀있을 것
		        (Server name 변경 가능)
		   
		   3_3) Finish
		   
		   3_4) 생성된 서버 수정하기 (서버 더블클릭)
		        3_4_1) 포트번호 재설정 (현재 기본값으로 잡혀진 8080포트와 오라클 기본 포트가 동일 하므로 충돌 발생) -> 다른 걸로 변경해야됨
		        3_4_2) 왼쪽 하단 Server Options에 Server modules without publishing 체크할 것!!
		        	   > 내가 이따가 지정할 output folder에 제대로 컴파일 된 파일들이 가게끔! 무조건 체크할 것
		       		
		       		   
		4) Dynamic Web Project 만들기 (동적인 웹 애플리케이션)
		   4_1) 프로젝트 명 신중하게 작성할 것 > Next
		   4_2) default output folder 경로 재설정  : WebContent\WEB-INF\classes		> Next
		        > output folder로 지정된 classes 폴더에는 컴파일된 클래스 파일들이 들어가는 폴더이다. (실제로 프로젝트 서비스 시 배포해야되는 실질적인 파일들)
		                      하지만 배포되는 폴더는 WebContent 뿐이다. (즉, 이 안에 해당 컴파일된 클래스 파일들이 있어야 된다는 소리)
		                      근데 기본 경로(build\classes)로 지정해 놓으면 해당 그 폴더가 WebContent 안에 만들어지는게 아니라 바깥쪽에 만들어지기 때문에 배포가 안됨!
		         
		   4_3) Context root : 이 애플리케이션만의 고유한 이름으로 지어줄 것 (기본값으로 프로젝트명 / 보통은 재정의해주는 걸 권장)
		   		> 하나의 서버로 여러개의 애플리케이션을 구동시킬 수 있음. 따라서 해당 애플리케이션에 접근하는 경로로 사용할 고유한 별칭같은 것! 
		   		     각 애플리케이션을 구분 짓는  용도
		   		
		   		Content directory : 실제로 배포되는 폴더(즉, 서버에 올라가는 폴더)의 최상위 폴더명을 지정하는 것 (기본값으로 WebContent) 웹 컨테이너에 해당됨
		   		
		   		Generate web.xml ~~ 무조건 체크할 것 (기본적을 체크안되어있음)
		   		> web.xml 문서에 기본적인 해당 애플리케이션에 대한 전체 설정 정보를 가지고 있는 파일 (서버 실행과 동시에 제일 먼저 읽혀지는 파일)
		   		    따라서 체크를 안하면 안만들어지기 때문에 체크하여 생성되게끔 해야됨
		   		    궂이 그 파일을 수정할 일 없으면 만들 필요는 없지만 (왜냐면 없으면 내부적으로 server가 가지고 있는 web.xml이 자동으로 실행되기 때문에)
		   		    그래도 혹시나 수정을 한다거나 작업할 일이 있을 경우를 대비해서 무조건 생성해 놓음!!
		   
		   4_4) Finish
		   
		   
		5) 새로이 만들어진 Project 확인해보기
		   5_1) [프로젝트]-[WebContent]-[WEB-INF]- classes 폴더 잘 만들어졌는지 확인하기
		   5_2) [프로젝트]-[WebContent]-[WEB-INF]- web.xml 문서 잘 만들어졌는지 확인하기
		   
		   5_3) index 파일 만들기 (WebContent\index.html)
		   
		6) 생성해놓은 서버에 애플리케이션 올리기
		   > 서버 오른쪽 버튼 > Add and Remove > 올리고자 하는 애플리케이션 선택 후 오른쪽으로 옮기고 > Finish
		   
		7) 서버 Start 후 웹 애플리케이션 요청해서 index 잘 열리는지 확인해보기
		           
	 -->

	<%@ include file="views/common/mypageMenubar.jsp" %>

</body>
</html>