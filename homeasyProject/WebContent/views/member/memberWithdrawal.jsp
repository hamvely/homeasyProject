<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .outer{
        width: 900px;
        height: 1150px;
        margin: auto;
        padding-top: 20px;
    }

    .inner{
        width: 800px;
        margin: auto;
    }

    h1 {margin-left: -40px;}

    #withdrawalForm table {
        padding-bottom: 20px;
        margin: auto;
        height: 950px;
    }

    #withdrawalForm {margin-left: -60px;}

    #withdrawalForm input{margin:5px; margin-left: 20px;}
    
    button {height:30px; margin: 10px 0 0 10px;}

    label {vertical-align:+1px; margin:3px;}

    #title {font-size: 17px; margin-left: 13px;}

    fieldset, textarea {margin-left: 10px;}
</style>
</head>
<body>
    <div class="outer">
        <div class="inner">    

            <h1>회원탈퇴</h1>

            <form action="" method="post" id="withdrawalForm">
                <table>
                    <tr>
                        <td><b id="title">회원 탈퇴 신청에 앞서 아래 내용을 반드시 확인해주세요.</b></td>
                    </tr>
                    <tr>
                        <td><fieldset>
                            <b>회원탈퇴 시 처리내용</b><br>
                            - 집이지 쿠폰은 소멸되며 환불되지 않습니다. <br>
                            - 집이지 구매 정보가 삭제됩니다. <br>
                            - 소비자보호에 관한 법률 제6조에 의거,계약 또는 청약철회 등에 관한 기록은 5년, 대금결제 및 재화 등의 공급에 관한 기록은 5년, 소비자의 불만 또는 분쟁처리에 관한 기록은 3년 동안 보관됩니다. 동 개인정보는 법률에 의한 보유 목적 외에 다른 목적으로는 이용되지 않습니다. <br><br>

                            <b>회원탈퇴 시 게시물 관리</b><br>
                            회원탈퇴 후 집이지 서비스에 입력한 게시물 및 댓글은 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없으므로 게시물 편집 및 삭제 처리가 원천적으로 불가능 합니다. 게시물 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제 하신 후, 탈퇴를 신청하시기 바랍니다. <br><br>

                            <b>회원탈퇴 후 재가입 규정</b><br>
                            탈퇴 회원이 재가입하더라도 기존의 집이지 쿠폰은 이미 소멸되었기 때문에 양도되지 않습니다.
                        </fieldset></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="terms" value="check" id="check" required>
                            <label for="check">위 내용을 모두 확인하였습니다. (필수)</label><br><br>
                        </td>
                    </tr>
                    <tr>
                        <td><br>
                            <b id="title">집이지 회원에서 탈퇴하려는 이유가 무엇인가요? (복수선택 가능)</b>
                        </td>
                    </tr>
                    <tr>
                        <td><fieldset>
                            <input type="checkbox" name="cause" value="빈도낮음" id="frequency">
                            <label for="frequency">이용빈도 낮음</label>
                            
                            <input type="checkbox" name="cause" value="상품부족" id="product">
                            <label for="product">콘텐츠/제품정보/상품부족</label>

                            <input type="checkbox" name="cause" value="재가입" id="rejoin">
                            <label for="rejoin">재가입</label>
    
                            <br>
                            
                            <input type="checkbox" name="cause" value="개인정보" id="personal">
                            <label for="personal">개인정보보호</label>
                            
                            <input type="checkbox" name="cause" value="혜택부족" id="personal">
                            <label for="personal">회원특혜/쇼핑혜택 부족</label>
                            
                            &nbsp;&nbsp;&nbsp;
                            <input type="checkbox" name="cause" value="기타" id="etc">
                            <label for="etc">기타</label>
                        </fieldset></td>
                    </tr>
                    <tr>
                        <td><br><br>
                            <b id="title">집이지 서비스 이용 중 어떤 부분이 불편하셨나요?</b>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <textarea name="content" placeholder="집이지를 떠나는 이유를 자세히 알려주시겠어요? 여러분의 소중한 의견을 반영해 더 좋은 서비스로 꼭 찾아뵙겠습니다." cols="130" rows="5" style="resize:none"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td><br><br>
                            <fieldset>
                            <b>개인정보보호에 대한 안내</b><br>
                            고객님께 개인정보보호에 대한 안내드립니다. <br>
                            집이지에서는 고객 여러분의 개인 정보를 개인정보보호 방침에 따라 안전하게 관리하고 있습니다. <br>
                            또한 최근 언론을 통해 보도된 개인정보유출 사고는 집이지와 관련이 없음을 안내해 드리며, 고객님께서 안전하게 이용하실 수 있도록 보안에 더욱 힘쓰겠습니다. 감사합니다.
                            </fieldset>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button type="submit">탈퇴신청</button>
                            <button type="submit">취소하기</button>
                        </td>
                    </tr>
                </table>

            </form>    

    
        </div>
    </div>
</body>
</html>