<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%@ include file="/_inc/header.jsp" %>

<style type="text/css">
    #content>ul {
        width:auto;
        height:40px;
        margin-top: 100px;
        font-size: 25px;
        font-weight: bold;
        text-align: center;
    }
    #content>ul>li{
        width:25%;
        height:40px;
        display:inline-block;
        float:left;
        line-height: 50px;
    }
    #content>ul:after{
        content:none;
        display: block;
        float:none;
        clear:both;
    }

    .joining {
        width: auto;
        height: 600px;
        border-top: 5px solid #eee;
        border-bottom: 5px solid #eee;
        margin-bottom: 140px;
        padding-top: 100px;
    }
    .agrcontent{
        width:1000px;
        height:400px;
        margin:auto;
    }
    .agreehead{
        width:auto;
        height:50px;


    }
    .agreehead > h2{
        width:600px;
        height:50px;
        float:left;
        margin-top:0px;
        padding-top:20px;
    }
    .agreehead > p{
        width:400px;
        height:50px;
        color:grey;
        padding-left:50px;
        float:left;
        padding-top:20px;
    }
    .agreehead{
        content=" ";
        display: block;
        float: none;
        clear: both;
    }
    .agreetxt{
        width:auto;
        height:150px;
        border:2px solid #eee;
        overflow-y: scroll;
    }
    .agreeornot{
        width:auto;
        height:40px;
        line-height: 40px;
        text-align:right;
    }
    .agrcontent .buttons{
        width:auto;
        height:70px;
        background-color: #eee;
        text-align: center;
        padding:15px;
    }
    .agrcontent .buttons button{
        width:200px;
        height:40px;
        display:inline-block;
    }
    </style>
    
    <div id="content">
            <ul>
                <li>1단계: 이메일 인증</li>
                <li><font color="#00a1c9">2단계: 약관동의</font></li>
                <li>3단계: 정보입력</li>
                <li>4단계: 가입완료</li>
            </ul>
            <div class="joining">
                <div class="agrcontent">
                    <div class="agreehead">
                    <h2>개인정보 수집에 대한 동의</h2>
                    <p>
                    문의를 통해 아래의 개인정보를 수집합니다.<br/>
                    수집된 개인정보는 문의 외 목적으로 사용하지 않습니다.
                    </p>
                    </div>
                    <div class="agreetxt">
                    <p>
                        개인정보의 수집목적 및 항목<br />
                        ① 수집 목적 : 원활한 고객 상담, 불편사항 및 문의사항 관련 의사소통 경로 확보<br />
                        ② 수집 항목<br />
                        *필수입력사항<br />
                        - 이용자 식별을 위한 항목 : 성명, 연락처, 생년월일, 이메일, 아이디(로그인 시 수집)<br />
                        <br />
                        개인정보의 보유 및 이용기간<br />
                        입력하신 개인정보는 문의 접수 후 처리 완료 시점으로 부터 3개월 간 보유 합니다.<br />
                         (단, 생년월일은 이용자 식별 목적으로 이용되며 별도 보관되지 않습니다.)<br />
                        다만, 소비자보호에 관한 법률 등 관계 법률에 의해 보유할 필요가 있는 경우에는 다음과 같이 보유합니다.<br />
                        보유기간 : 소비자의 불만 또는 분쟁처리에 관한 기록 3년<br /><br />
                        ※ 1:1문의 서비스 제공을 위한 최소한의 개인정보이며 거부할 수 있습니다. 다만, 수집에 동의하지 않을 경우 서비스 이용이 제한됩니다.<br />
                    </p>
                    </div>
                    <div class="agreeornot">
                    <input type="radio" name="agree" id="agree"
                    value="agree"/>
                    <label for="agree">동의&nbsp;&nbsp;</label>
                    <input type="radio" name="agree" id="disagree"
                    value="agree"/>
                    <label for="disagree">동의하지 않음</label>
                    </div>
                    <div class="buttons">
                        <a href="<%=request.getContextPath()%>/account/05-putMemInfo.jsp"><button type="button" class="btn btn-default">확인</button></a>
                        <a href="<%=request.getContextPath()%>/account/02-putEmail.jsp"><button type="button" class="btn btn-default">취소</button></a>
                    </div>
                </div>
            </div>
        </div>

<%@ include file="/_inc/footer.jsp" %>