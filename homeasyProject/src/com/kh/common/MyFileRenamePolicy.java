package com.kh.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;

public class MyFileRenamePolicy implements FileRenamePolicy {
<<<<<<< HEAD
	
	// 기존의 파일(원본파일)을 전달 받아서 수정명 작업을 마친 수정된 파일을 반환해주는 메소드
	@Override
	public File rename(File originFile) {
		
		// 원본 파일명
		String originName = originFile.getName();
		
		// 수정 파일명 : 파일업로드한시간(년월일시분초)+5자리랜덤값(10000~99999)+확장자(원본파일확장자)
		
		// 원본명 		=>  수정명
		// aaa.jpg  =>  2021040714253045312.jpg
		
		// 1.파일업로드한시간(년월일시분초) (String currentTime)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String currentTime = sdf.format(new Date());
=======

	// 기존의 파일(원본 파일)을 전달 받아서 수정명 작업을 마친 수정된 파일을 반환해주는 메소드
	@Override
	public File rename(File originFile) {
		
		// 원본 파일명 ("aaa.jpg")
		String originName = originFile.getName();
		
		// 수정 파일명 : 파일업로드한시간(년월일시분초)+5자리랜덤값(10000~99999)+확장자(원본파일의확장자)
		
		// 원본명		=> 수정명
		// aaa.jpg	=> 2021040714253045312.jpg
		
		// 1. 파일업로드한시간(년월일시분초)   (String currentTime)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String currentTime = sdf.format(new Date());   // "20210407142530"
>>>>>>> b72f59d7393331586689dc057f06972c02d1457d
		
		// 2. 5자리 랜덤값 (int ranNum)
		int ranNum = (int)(Math.random() * 90000 + 10000); // 45312
		
<<<<<<< HEAD
		// 3. 기존파일의 확장자(String ext)
		String ext = originName.substring(originName.lastIndexOf(".")); // ".jpg"
	
		// 수정명 완성!
		String changeName = currentTime + ranNum + ext; // " 2021040714253045312.jpg"
=======
		// 3. 기존파일의 확장자 (String ext)
		String ext = originName.substring(originName.lastIndexOf(".")); // ".jpg"
		
		// 수정명 완성!
		String changeName = currentTime + ranNum + ext; // "2021040714253045312.jpg"
>>>>>>> b72f59d7393331586689dc057f06972c02d1457d
		
		// 전달받은 원본파일(originFile)을 수정된 파일명으로 파일객체 생성해서 반환
		return new File(originFile.getParent(), changeName);
		
		
	}

<<<<<<< HEAD
	
	
	
=======
>>>>>>> b72f59d7393331586689dc057f06972c02d1457d
}
