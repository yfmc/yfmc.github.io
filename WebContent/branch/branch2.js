/* 지역명 클릭 시 지역별 극장 list 나타내기 */
var b_json={
	 "seoul": [
			{"brand": "롯데시네마", "branch": "가산디지털"},
			{"brand": "롯데시네마", "branch": "가양"},
			{"brand": "CGV", "branch": "강남"},
			{"brand": "메가박스", "branch": "강남"},
			{"brand": "메가박스", "branch": "강남대로(씨티)"},
			{"brand": "메가박스", "branch": "강동"},
			{"brand": "롯데시네마", "branch": "강동"},
			{"brand": "CGV", "branch": "강변"},
			{"brand": "CGV", "branch": "건대입구"},
			{"brand": "롯데시네마", "branch": "건대입구"},
			{"brand": "CGV", "branch": "구로"},
			{"brand": "메가박스", "branch": "군자"},
			{"brand": "롯데시네마", "branch": "김포공항"},
			{"brand": "롯데시네마", "branch": "노원"},
			{"brand": "CGV", "branch": "대학로"},
			{"brand": "롯데시네마", "branch": "도곡"},
			{"brand": "롯데시네마", "branch": "독산"},
			{"brand": "CGV", "branch": "동대문"},
			{"brand": "메가박스", "branch": "동대문"},
			{"brand": "CGV", "branch": "등촌"},
			{"brand": "메가박스", "branch": "마곡"},
			{"brand": "CGV", "branch": "명동"},
			{"brand": "CGV", "branch": "명동역 씨네라이브러리"},
			{"brand": "메가박스", "branch": "목동"},
			{"brand": "CGV", "branch": "목동"},
			{"brand": "CGV", "branch": "미아"},
			{"brand": "CGV", "branch": "불광"},
			{"brand": "롯데시네마", "branch": "브로드웨이(신사)"},
			{"brand": "메가박스", "branch": "상봉"},
			{"brand": "CGV", "branch": "상봉"},
			{"brand": "메가박스", "branch": "상암월드컵경기장"},
			{"brand": "롯데시네마", "branch": "서울대입구"},
			{"brand": "메가박스", "branch": "성수"},
			{"brand": "CGV", "branch": "성신여대입구"},
			{"brand": "메가박스", "branch": "센트럴"},
			{"brand": "CGV", "branch": "송파"},
			{"brand": "메가박스", "branch": "송파파크하비오"},
			{"brand": "롯데시네마", "branch": "수락산"},
			{"brand": "CGV", "branch": "수유"},
			{"brand": "롯데시네마", "branch": "수유"},
			{"brand": "롯데시네마", "branch": "신도림"},
			{"brand": "롯데시네마", "branch": "신림"},
			{"brand": "메가박스", "branch": "신촌"},
			{"brand": "CGV", "branch": "신촌아트레온"},
			{"brand": "메가박스", "branch": "아트나인"},
			{"brand": "CGV", "branch": "압구정"},
			{"brand": "롯데시네마", "branch": "에비뉴엘(명동)"},
			{"brand": "CGV", "branch": "여의도"},
			{"brand": "롯데시네마", "branch": "영등포"},
			{"brand": "CGV", "branch": "영등포"},
			{"brand": "CGV", "branch": "왕십리"},
			{"brand": "롯데시네마", "branch": "용산"},
			{"brand": "CGV", "branch": "용산아이파크몰"},
			{"brand": "롯데시네마", "branch": "월드타워"},
			{"brand": "메가박스", "branch": "은평"},
			{"brand": "롯데시네마", "branch": "은평"},
			{"brand": "메가박스", "branch": "이수"},
			{"brand": "롯데시네마", "branch": "장안"},
			{"brand": "CGV", "branch": "중계"},
			{"brand": "메가박스", "branch": "창동"},
			{"brand": "CGV", "branch": "천호"},
			{"brand": "CGV", "branch": "청담씨네시티"},
			{"brand": "롯데시네마", "branch": "청량리"},
			{"brand": "메가박스", "branch": "코엑스"},
			{"brand": "CGV", "branch": "피카디리 1958"},
			{"brand": "CGV", "branch": "하계"},
			{"brand": "롯데시네마", "branch": "합정"},
			{"brand": "메가박스", "branch": "홍대"},
			{"brand": "CGV", "branch": "홍대"},
			{"brand": "롯데시네마", "branch": "홍대입구"},
			{"brand": "메가박스", "branch": "화곡"},
			{"brand": "롯데시네마", "branch": "황학"}
	  ],
	 "gyeonggi": [
		  {"brand": "CGV", "branch": "경기광주"},
		  {"brand": "메가박스", "branch": "고양스타필드"},
		  {"brand": "CGV", "branch": "고양행신"},
		  {"brand": "CGV", "branch": "광교"},
		  {"brand": "CGV", "branch": "광교상현"},
		  {"brand": "롯데시네마", "branch": "광교아울렛"},
		  {"brand": "롯데시네마", "branch": "광명"},
		  {"brand": "롯데시네마", "branch": "광명아울렛"},
		  {"brand": "롯데시네마", "branch": "광주터미널"},
		  {"brand": "CGV", "branch": "구리"},
		  {"brand": "롯데시네마", "branch": "구리아울렛"},
		  {"brand": "CGV", "branch": "김포운양"},
		  {"brand": "CGV", "branch": "김포풍무"},
		  {"brand": "CGV", "branch": "김포한강"},
		  {"brand": "메가박스", "branch": "김포한강신도시"},
		  {"brand": "메가박스", "branch": "남양주"},
		  {"brand": "CGV", "branch": "동백"},
		  {"brand": "CGV", "branch": "동수원"},
		  {"brand": "CGV", "branch": "동탄"},
		  {"brand": "메가박스", "branch": "동탄"},
		  {"brand": "CGV", "branch": "동탄역"},
		  {"brand": "CGV", "branch": "동탄호수공원"},
		  {"brand": "롯데시네마", "branch": "라페스타"},
	  	  {"brand": "롯데시네마", "branch": "마석"},
	  	  {"brand": "메가박스", "branch": "미사강변"},
	  	  {"brand": "CGV", "branch": "배곧"},
	  	  {"brand": "메가박스", "branch": "백석"},
	  	  {"brand": "CGV", "branch": "범계"},
	  	  {"brand": "메가박스", "branch": "별내"},
	  	  {"brand": "롯데시네마", "branch": "병점"},
	  	  {"brand": "CGV", "branch": "부천"},
	  	  {"brand": "롯데시네마", "branch": "부천(신중동역)"},
	  	  {"brand": "메가박스", "branch": "부천스타필드시티"},
	  	  {"brand": "롯데시네마", "branch": "부천역"},
	  	  {"brand": "CGV", "branch": "부천역"},
	  	  {"brand": "CGV", "branch": "부천옥길"},
	  	  {"brand": "CGV", "branch": "북수원"},
	  	  {"brand": "롯데시네마", "branch": "북수원(천천동)"},
	  	  {"brand": "메가박스", "branch": "분당"},
	  	  {"brand": "CGV", "branch": "산본"},
	  	  {"brand": "롯데시네마", "branch": "산본피트인"},
	  	  {"brand": "롯데시네마", "branch": "서수원"},
	  	  {"brand": "CGV", "branch": "서현"},
	  	  {"brand": "CGV", "branch": "성남모란"},
	  	  {"brand": "롯데시네마", "branch": "성남중앙(신흥역)"},
	  	  {"brand": "롯데시네마", "branch": "센트럴락"},
	  	  {"brand": "CGV", "branch": "소풍"},
	  	  {"brand": "롯데시네마", "branch": "송탄"},
	  	  {"brand": "CGV", "branch": "수원"},
	  	  {"brand": "메가박스", "branch": "수원"},
	  	  {"brand": "롯데시네마", "branch": "수원"},
	  	  {"brand": "메가박스", "branch": "수원남문"},
	  	  {"brand": "롯데시네마", "branch": "수지"},
	  	  {"brand": "CGV", "branch": "스타필드시티위례"},
	  	  {"brand": "롯데시네마", "branch": "시화"},
	  	  {"brand": "CGV", "branch": "시흥"},
	  	  {"brand": "메가박스", "branch": "시흥배곧"},
	  	  {"brand": "CGV", "branch": "안산"},
	  	  {"brand": "롯데시네마", "branch": "안산"},
	  	  {"brand": "롯데시네마", "branch": "안산고잔"},
	  	  {"brand": "메가박스", "branch": "안산중앙"},
	  	  {"brand": "롯데시네마", "branch": "안성"},
	  	  {"brand": "CGV", "branch": "안성"},
	  	  {"brand": "롯데시네마", "branch": "안양(안양역)"},
	  	  {"brand": "롯데시네마", "branch": "안양일번가"},
	  	  {"brand": "CGV", "branch": "야탑"},
	  	  {"brand": "메가박스", "branch": "양주"},
	  	  {"brand": "롯데시네마", "branch": "양주고읍"},
	  	  {"brand": "CGV", "branch": "양주옥정"},
	  	  {"brand": "CGV", "branch": "역곡"},
	  	  {"brand": "메가박스", "branch": "영통"},
	  	  {"brand": "CGV", "branch": "오리"},
	  	  {"brand": "롯데시네마", "branch": "오산"},
	  	  {"brand": "CGV", "branch": "오산"},
	  	  {"brand": "CGV", "branch": "오산중앙"},
	  	  {"brand": "CGV", "branch": "용인"},
	  	  {"brand": "롯데시네마", "branch": "용인기흥"},
	  	  {"brand": "메가박스", "branch": "용인기흥"},
	  	  {"brand": "롯데시네마", "branch": "용인역북"},
	  	  {"brand": "메가박스", "branch": "용인테크노밸리"},
	  	  {"brand": "롯데시네마", "branch": "위례"},
	  	  {"brand": "CGV", "branch": "의정부"},
	  	  {"brand": "메가박스", "branch": "의정부민락"},
	  	  {"brand": "롯데시네마", "branch": "의정부민락"},
	  	  {"brand": "CGV", "branch": "의정부태흥"},
	  	  {"brand": "CGV", "branch": "이천"},
	  	  {"brand": "롯데시네마", "branch": "인덕원"},
	  	  {"brand": "메가박스", "branch": "일산"},
	  	  {"brand": "CGV", "branch": "일산"},
	  	  {"brand": "메가박스", "branch": "일산벨라시타"},
	  	  {"brand": "CGV", "branch": "정왕"},
	  	  {"brand": "롯데시네마", "branch": "주엽(일산)"},
	  	  {"brand": "CGV", "branch": "죽전"},
	  	  {"brand": "롯데시네마", "branch": "진접"},
	  	  {"brand": "메가박스", "branch": "킨텍스"},
	  	  {"brand": "메가박스", "branch": "파주금촌"},
	  	  {"brand": "CGV", "branch": "파주문산"},
	  	  {"brand": "롯데시네마", "branch": "파주아울렛"},
	  	  {"brand": "메가박스", "branch": "파주운정"},
	  	  {"brand": "롯데시네마", "branch": "파주운정"},
	  	  {"brand": "메가박스", "branch": "파주출판도시"},
	  	  {"brand": "CGV", "branch": "판교"},
	  	  {"brand": "CGV", "branch": "평촌"},
	  	  {"brand": "롯데시네마", "branch": "평촌(범계역)"},
	  	  {"brand": "CGV", "branch": "평택"},
	  	  {"brand": "메가박스", "branch": "평택"},
	  	  {"brand": "롯데시네마", "branch": "평택비전"},
	  	  {"brand": "CGV", "branch": "평택소사"},
	  	  {"brand": "CGV", "branch": "포천"},
	  	  {"brand": "메가박스", "branch": "하남스타필드"},
	  	  {"brand": "롯데시네마", "branch": "향남"},
	  	  {"brand": "CGV", "branch": "화성봉담"},
	  	  {"brand": "CGV", "branch": "화정"}
	  ],
	 "incheon": [
		 {"brand": "롯데시네마", "branch": "검단"},
		 {"brand": "메가박스", "branch": "검단"},
		 {"brand": "CGV", "branch": "계양"},
		 {"brand": "CGV", "branch": "남주안"},
		 {"brand": "롯데시네마", "branch": "부평"},
		 {"brand": "CGV", "branch": "부평"},
		 {"brand": "롯데시네마", "branch": "부평역사"},
		 {"brand": "메가박스", "branch": "송도"},
		 {"brand": "CGV", "branch": "연수역"},
		 {"brand": "메가박스", "branch": "영종"},
		 {"brand": "롯데시네마", "branch": "영종하늘도시"},
		 {"brand": "CGV", "branch": "인천"},
		 {"brand": "CGV", "branch": "인천공항"},
		 {"brand": "CGV", "branch": "인천논현"},
		 {"brand": "메가박스", "branch": "인천논현"},
		 {"brand": "롯데시네마", "branch": "인천아시아드"},
		 {"brand": "CGV", "branch": "인천연수"},
		 {"brand": "롯데시네마", "branch": "인천터미널"},
		 {"brand": "CGV", "branch": "인천학익"},
		 {"brand": "CGV", "branch": "주안역"},
		 {"brand": "CGV", "branch": "청라"},
		 {"brand": "메가박스", "branch": "청라"},
		 {"brand": "메가박스", "branch": "청라지젤"}
	  ],
	 "gangwon": [
		 {"brand": "CGV", "branch": "강릉"},
		 {"brand": "롯데시네마", "branch": "남원주"},
		 {"brand": "메가박스", "branch": "남춘천"},
		 {"brand": "롯데시네마", "branch": "동해"},
		 {"brand": "메가박스", "branch": "속초"},
		 {"brand": "CGV", "branch": "원주"},
		 {"brand": "메가박스", "branch": "원주"},
		 {"brand": "롯데시네마", "branch": "원주무실"},
		 {"brand": "메가박스", "branch": "원주센트럴"},
		 {"brand": "CGV", "branch": "인제"},
		 {"brand": "CGV", "branch": "춘천"},
		 {"brand": "롯데시네마", "branch": "춘천"}
	  ],
	 "daejeon": [
		 {"brand": "CGV", "branch": "대전"},
		 {"brand": "롯데시네마", "branch": "대전"},
		 {"brand": "메가박스", "branch": "대전"},
		 {"brand": "CGV", "branch": "대전가수원"},
		 {"brand": "CGV", "branch": "대전가오"},
		 {"brand": "롯데시네마", "branch": "대전관저"},
		 {"brand": "롯데시네마", "branch": "대전둔산"},
		 {"brand": "롯데시네마", "branch": "대전센트럴"},
		 {"brand": "메가박스", "branch": "대전유성"},
	  	 {"brand": "메가박스", "branch": "대전중앙로"},
	  	 {"brand": "CGV", "branch": "대전탄방"},
	  	 {"brand": "CGV", "branch": "대전터미널"},
	  	 {"brand": "메가박스", "branch": "대전현대아울렛"},
	  	 {"brand": "CGV", "branch": "유성노은"}
	  ],
	 "chungcheong": [
		 {"brand": "메가박스", "branch": "공주"},
		 {"brand": "CGV", "branch": "당진"},
		 {"brand": "CGV", "branch": "보령"},
		 {"brand": "CGV", "branch": "서산"},
		 {"brand": "롯데시네마", "branch": "서산"},
		 {"brand": "롯데시네마", "branch": "서청주"},
		 {"brand": "CGV", "branch": "세종"},
		 {"brand": "메가박스", "branch": "세종(조치원)"},
		 {"brand": "메가박스", "branch": "세종나성"},
		 {"brand": "메가박스", "branch": "세종청사"},
		 {"brand": "롯데시네마", "branch": "아산터미널"},
		 {"brand": "메가박스", "branch": "오창"},
		 {"brand": "메가박스", "branch": "제천"},
		 {"brand": "메가박스", "branch": "진천"},
		 {"brand": "메가박스", "branch": "천안"},
		 {"brand": "CGV", "branch": "천안"},
		 {"brand": "CGV", "branch": "천안터미널"},
		 {"brand": "CGV", "branch": "천안펜타포트"},
		 {"brand": "롯데시네마", "branch": "청주"},
		 {"brand": "CGV", "branch": "청주(서문)"},
		 {"brand": "메가박스", "branch": "청주사창"},
		 {"brand": "CGV", "branch": "청주성안길"},
		 {"brand": "롯데시네마", "branch": "청주용암"},
		 {"brand": "CGV", "branch": "청주율량"},
		 {"brand": "CGV", "branch": "청주지웰시티"},
		 {"brand": "CGV", "branch": "청주터미널"},
		 {"brand": "CGV", "branch": "충북혁신"},
		 {"brand": "메가박스", "branch": "충주"},
		 {"brand": "롯데시네마", "branch": "충주"},
		 {"brand": "CGV", "branch": "홍성"},
		 {"brand": "메가박스", "branch": "홍성내포"}
	  ],
	 "gwangju": [
		 {"brand": "롯데시네마", "branch": "광주"},
		 {"brand": "롯데시네마", "branch": "광주광산"},
		 {"brand": "CGV", "branch": "광주금남로"},
		 {"brand": "CGV", "branch": "광주상무"},
		 {"brand": "메가박스", "branch": "광주상무"},
		 {"brand": "CGV", "branch": "광주용봉"},
		 {"brand": "CGV", "branch": "광주첨단"},
		 {"brand": "CGV", "branch": "광주충장로"},
		 {"brand": "CGV", "branch": "광주터미널"},
		 {"brand": "CGV", "branch": "광주하남"},
		 {"brand": "메가박스", "branch": "광주하남"},
		 {"brand": "롯데시네마", "branch": "수완"},
		 {"brand": "메가박스", "branch": "전대(광주)"},
		 {"brand": "메가박스", "branch": "첨단"},
		 {"brand": "롯데시네마", "branch": "충장로"}
	  ],
	 "jeolla": [
		 {"brand": "CGV", "branch": "광양"},
		 {"brand": "CGV", "branch": "광양엘에프스퀘어"},
		 {"brand": "CGV", "branch": "군산"},
		 {"brand": "롯데시네마", "branch": "군산나운"},
		 {"brand": "롯데시네마", "branch": "군산몰"},
		 {"brand": "CGV", "branch": "나주"},
		 {"brand": "메가박스", "branch": "남원"},
		 {"brand": "CGV", "branch": "목포"},
		 {"brand": "CGV", "branch": "목포평화광장"},
		 {"brand": "메가박스", "branch": "목포하당"},
		 {"brand": "CGV", "branch": "서전주"},
	  	 {"brand": "메가박스", "branch": "송천"},
	  	 {"brand": "CGV", "branch": "순천"},
	  	 {"brand": "메가박스", "branch": "순천"},
	  	 {"brand": "CGV", "branch": "순천신대"},
	  	 {"brand": "메가박스", "branch": "여수웅천"},
	  	 {"brand": "CGV", "branch": "여수웅천"},
	  	 {"brand": "CGV", "branch": "익산"},
	  	 {"brand": "롯데시네마", "branch": "익산모현"},
	  	 {"brand": "롯데시네마", "branch": "전주"},
	  	 {"brand": "CGV", "branch": "전주고사"},
	  	 {"brand": "롯데시네마", "branch": "전주평화"},
	  	 {"brand": "CGV", "branch": "전주효자"},
	  	 {"brand": "CGV", "branch": "정읍"}
	  ],
	 "daegu": [
		 {"brand": "메가박스", "branch": "경북도청"},
		 {"brand": "롯데시네마", "branch": "경산"},
		 {"brand": "메가박스", "branch": "경산하양"},
		 {"brand": "메가박스", "branch": "경주"},
		 {"brand": "롯데시네마", "branch": "경주"},
		 {"brand": "CGV", "branch": "구미"},
		 {"brand": "롯데시네마", "branch": "구미 프라임1번가"},
		 {"brand": "메가박스", "branch": "구미강동"},
		 {"brand": "롯데시네마", "branch": "구미공단"},
		 {"brand": "메가박스", "branch": "김천"},
		 {"brand": "CGV", "branch": "김천율곡"},
		 {"brand": "메가박스", "branch": "남포항"},
		 {"brand": "CGV", "branch": "대구"},
		 {"brand": "메가박스", "branch": "대구(칠성로)"},
		 {"brand": "롯데시네마", "branch": "대구광장"},
		 {"brand": "CGV", "branch": "대구수성"},
		 {"brand": "CGV", "branch": "대구스타디움"},
		 {"brand": "메가박스", "branch": "대구신세계(동대구)"},
		 {"brand": "CGV", "branch": "대구아카데미"},
		 {"brand": "CGV", "branch": "대구월성"},
		 {"brand": "롯데시네마", "branch": "대구율하"},
		 {"brand": "메가박스", "branch": "대구이시아"},
		 {"brand": "CGV", "branch": "대구이시아"},
		 {"brand": "CGV", "branch": "대구칠곡"},
		 {"brand": "CGV", "branch": "대구한일"},
		 {"brand": "CGV", "branch": "대구현대"},
		 {"brand": "롯데시네마", "branch": "대구현풍"},
		 {"brand": "롯데시네마", "branch": "동성로"},
		 {"brand": "메가박스", "branch": "문경"},
		 {"brand": "메가박스", "branch": "북대구(칠곡)"},
		 {"brand": "CGV", "branch": "북포항"},
		 {"brand": "롯데시네마", "branch": "상인"},
		 {"brand": "롯데시네마", "branch": "상주"},
		 {"brand": "롯데시네마", "branch": "성서"},
		 {"brand": "CGV", "branch": "안동"},
		 {"brand": "롯데시네마", "branch": "영주"},
		 {"brand": "CGV", "branch": "포항"},
		 {"brand": "롯데시네마", "branch": "포항"},
		 {"brand": "롯데시네마", "branch": "프리미엄구미센트럴"},
		 {"brand": "롯데시네마", "branch": "프리미엄만경"},
		 {"brand": "롯데시네마", "branch": "프리미엄안동"},
		 {"brand": "롯데시네마", "branch": "프리미엄칠곡"}
	  ],
	 "busan": [
		 {"brand": "롯데시네마", "branch": "광복"},
		 {"brand": "CGV", "branch": "남포"},
		 {"brand": "CGV", "branch": "대연"},
		 {"brand": "롯데시네마", "branch": "대영"},
		 {"brand": "메가박스", "branch": "덕천"},
		 {"brand": "롯데시네마", "branch": "동래"},
		 {"brand": "CGV", "branch": "동래"},
		 {"brand": "롯데시네마", "branch": "동부산아울렛"},
		 {"brand": "메가박스", "branch": "부산극장"},
		 {"brand": "메가박스", "branch": "부산대"},
		 {"brand": "롯데시네마", "branch": "부산본점"},
		 {"brand": "롯데시네마", "branch": "사상"},
		 {"brand": "CGV", "branch": "서면"},
		 {"brand": "롯데시네마", "branch": "서면(전포동)"},
		 {"brand": "CGV", "branch": "서면삼정타워"},
		 {"brand": "CGV", "branch": "센텀시티"},
		 {"brand": "롯데시네마", "branch": "센텀시티"},
		 {"brand": "CGV", "branch": "아시아드"},
		 {"brand": "롯데시네마", "branch": "오투(부산대)"},
		 {"brand": "메가박스", "branch": "우산"},
		 {"brand": "롯데시네마", "branch": "울산"},
		 {"brand": "CGV", "branch": "울산삼산"},
		 {"brand": "롯데시네마", "branch": "울산성남"},
		 {"brand": "CGV", "branch": "울산신천"},
		 {"brand": "CGV", "branch": "울산진장"},
		 {"brand": "메가박스", "branch": "정관"},
		 {"brand": "CGV", "branch": "정관"},
		 {"brand": "롯데시네마", "branch": "프리미엄해운대"},
		 {"brand": "CGV", "branch": "하단아트몰링"},
		 {"brand": "CGV", "branch": "해운대"},
		 {"brand": "메가박스", "branch": "해운대(장산)"},
		 {"brand": "CGV", "branch": "화명"}
	  ],
	 "gyeongnam": [
		 {"brand": "CGV", "branch": "거제"},
		 {"brand": "메가박스", "branch": "거창"},
		 {"brand": "CGV", "branch": "김해"},
		 {"brand": "롯데시네마", "branch": "김해부원"},
		 {"brand": "롯데시네마", "branch": "김해아울렛"},
		 {"brand": "CGV", "branch": "김해율하"},
		 {"brand": "CGV", "branch": "김해장유"},
		 {"brand": "CGV", "branch": "마산"},
		 {"brand": "메가박스", "branch": "마산"},
		 {"brand": "롯데시네마", "branch": "마산(합성동)"},
		 {"brand": "메가박스", "branch": "사천"},
		 {"brand": "메가박스", "branch": "삼천포"},
		 {"brand": "메가박스", "branch": "양산"},
		 {"brand": "메가박스", "branch": "양산라피에스타"},
		 {"brand": "CGV", "branch": "양산물금"},
		 {"brand": "CGV", "branch": "양산삼호"},
		 {"brand": "롯데시네마", "branch": "진주엠비씨네"},
		 {"brand": "롯데시네마", "branch": "진주혁신"},
		 {"brand": "롯데시네마", "branch": "진해"},
		 {"brand": "메가박스", "branch": "창원"},
		 {"brand": "CGV", "branch": "창원"},
		 {"brand": "롯데시네마", "branch": "창원"},
		 {"brand": "메가박스", "branch": "창원내서"},
		 {"brand": "CGV", "branch": "창원더시티"},
		 {"brand": "롯데시네마", "branch": "통영"},
		 {"brand": "CGV", "branch": "통영"},
		 {"brand": "롯데시네마", "branch": "프리미엄경남대"},
		 {"brand": "롯데시네마", "branch": "프리미엄진주"}
	  ],
	 "jeju": [
		 {"brand": "롯데시네마", "branch": "서귀포"},
		 {"brand": "CGV", "branch": "제주"},
		 {"brand": "메가박스", "branch": "제주"},
		 {"brand": "CGV", "branch": "제주노형"},
		 {"brand": "롯데시네마", "branch": "제주삼화지구"},
		 {"brand": "롯데시네마", "branch": "제주아라"}
	  ]
};

$(function() {
	// 극장별 상세 페이지에서 각 지역별 극장 목록 노출 기능 구현
	$("#seoul1").click(function() {
		var html="";
		for (var i=0; i<b_json.seoul.length; i++) {
			html+="<li><a href='#'>"+b_json.seoul[i].brand+" "+b_json.seoul[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "500");
	});
	$("#gyeonggi1").click(function() {
		var html="";
		for (var i=0; i<b_json.gyeonggi.length; i++) {
			html+="<li><a href='#'>"+b_json.gyeonggi[i].brand+" "+b_json.gyeonggi[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "500");
	});
	$("#incheon1").click(function() {
		var html="";
		for (var i=0; i<b_json.incheon.length; i++) {
			html+="<li><a href='#'>"+b_json.incheon[i].brand+" "+b_json.incheon[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "300");
	});
	$("#gangwon1").click(function() {
		var html="";
		for (var i=0; i<b_json.gangwon.length; i++) {
			html+="<li><a href='#'>"+b_json.gangwon[i].brand+" "+b_json.gangwon[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "200");
	});
	$("#daejeon1").click(function() {
		var html="";
		for (var i=0; i<b_json.daejeon.length; i++) {
			html+="<li><a href='#'>"+b_json.daejeon[i].brand+" "+b_json.daejeon[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "200");
	});
	$("#chungcheong1").click(function() {
		var html="";
		for (var i=0; i<b_json.chungcheong.length; i++) {
			html+="<li><a href='#'>"+b_json.chungcheong[i].brand+" "+b_json.chungcheong[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "350");
	});
	$("#gwangju1").click(function() {
		var html="";
		for (var i=0; i<b_json.gwangju.length; i++) {
			html+="<li><a href='#'>"+b_json.gwangju[i].brand+" "+b_json.gwangju[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "200");
	});
	$("#jeolla1").click(function() {
		var html="";
		for (var i=0; i<b_json.jeolla.length; i++) {
			html+="<li><a href='#'>"+b_json.jeolla[i].brand+" "+b_json.jeolla[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "300");
	});
	$("#daegu1").click(function() {
		var html="";
		for (var i=0; i<b_json.daegu.length; i++) {
			html+="<li><a href='#'>"+b_json.daegu[i].brand+" "+b_json.daegu[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "400");
	});
	$("#busan1").click(function() {
		var html="";
		for (var i=0; i<b_json.busan.length; i++) {
			html+="<li><a href='#'>"+b_json.busan[i].brand+" "+b_json.busan[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "350");
	});
	$("#gyeongnam1").click(function() {
		var html="";
		for (var i=0; i<b_json.gyeongnam.length; i++) {
			html+="<li><a href='#'>"+b_json.gyeongnam[i].brand+" "+b_json.gyeongnam[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "350");
	});
	$("#jeju1").click(function() {
		var html="";
		for (var i=0; i<b_json.jeju.length; i++) {
			html+="<li><a href='#'>"+b_json.jeju[i].brand+" "+b_json.jeju[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "200");
	});
	
	// 예매 상영시간 선택 페이지에서 지역별 극장 목록 노출 기능 구현
	$("#seoul2").click(function() {
		var html="";
		for (var i=0; i<b_json.seoul.length; i++) {
			html+="<li>"+b_json.seoul[i].brand+" "+b_json.seoul[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#gyeonggi2").click(function() {
		var html="";
		for (var i=0; i<b_json.gyeonggi.length; i++) {
			html+="<li>"+b_json.gyeonggi[i].brand+" "+b_json.gyeonggi[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#incheon2").click(function() {
		var html="";
		for (var i=0; i<b_json.incheon.length; i++) {
			html+="<li>"+b_json.incheon[i].brand+" "+b_json.incheon[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#gangwon2").click(function() {
		var html="";
		for (var i=0; i<b_json.gangwon.length; i++) {
			html+="<li>"+b_json.gangwon[i].brand+" "+b_json.gangwon[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#daejeon2").click(function() {
		var html="";
		for (var i=0; i<b_json.daejeon.length; i++) {
			html+="<li>"+b_json.daejeon[i].brand+" "+b_json.daejeon[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#chungcheong2").click(function() {
		var html="";
		for (var i=0; i<b_json.chungcheong.length; i++) {
			html+="<li>"+b_json.chungcheong[i].brand+" "+b_json.chungcheong[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#gwangju2").click(function() {
		var html="";
		for (var i=0; i<b_json.gwangju.length; i++) {
			html+="<li>"+b_json.gwangju[i].brand+" "+b_json.gwangju[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#jeolla2").click(function() {
		var html="";
		for (var i=0; i<b_json.jeolla.length; i++) {
			html+="<li>"+b_json.jeolla[i].brand+" "+b_json.jeolla[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#daegu2").click(function() {
		var html="";
		for (var i=0; i<b_json.daegu.length; i++) {
			html+="<li>"+b_json.daegu[i].brand+" "+b_json.daegu[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#busan2").click(function() {
		var html="";
		for (var i=0; i<b_json.busan.length; i++) {
			html+="<li>"+b_json.busan[i].brand+" "+b_json.busan[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#gyeongnam2").click(function() {
		var html="";
		for (var i=0; i<b_json.gyeongnam.length; i++) {
			html+="<li>"+b_json.gyeongnam[i].brand+" "+b_json.gyeongnam[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
	$("#jeju2").click(function() {
		var html="";
		for (var i=0; i<b_json.jeju.length; i++) {
			html+="<li>"+b_json.jeju[i].brand+" "+b_json.jeju[i].branch+"</li>\n";
		}
		$("#branch_list").html(html);
		$(".choose_provincial li").css("background-color", "#eee");
		$(this).css("background-color", "white");
	});
});