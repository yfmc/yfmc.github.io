/* 지역명 클릭 시 지역별 극장 list 나타내기 */
var b_json={
		"seoul": [
			{"brano": 1001, "brand": "롯데시네마", "branch": "가산디지털"},
		  {"brano": 1002, "brand": "롯데시네마", "branch": "가양"},
		  {"brano": 1003, "brand": "CGV", "branch": "강남"},
		  {"brano": 1004, "brand": "메가박스", "branch": "강남"},
		  {"brano": 1005, "brand": "메가박스", "branch": "강남대로(씨티)"},
		  {"brano": 1006, "brand": "롯데시네마", "branch": "강동"},
		  {"brano": 1007, "brand": "메가박스", "branch": "강동"},
		  {"brano": 1008, "brand": "CGV", "branch": "강변"},
		  {"brano": 1009, "brand": "CGV", "branch": "건대입구"},
		  {"brano": 1010, "brand": "롯데시네마", "branch": "건대입구"},
		  {"brano": 1011, "brand": "CGV", "branch": "구로"},
		  {"brano": 1012, "brand": "메가박스", "branch": "군자"},
		  {"brano": 1013, "brand": "롯데시네마", "branch": "김포공항"},
		  {"brano": 1014, "brand": "롯데시네마", "branch": "노원"},
		  {"brano": 1015, "brand": "CGV", "branch": "대학로"},
		  {"brano": 1016, "brand": "롯데시네마", "branch": "도곡"},
		  {"brano": 1017, "brand": "롯데시네마", "branch": "독산"},
		  {"brano": 1018, "brand": "CGV", "branch": "동대문"},
		  {"brano": 1019, "brand": "메가박스", "branch": "동대문"},
		  {"brano": 1020, "brand": "CGV", "branch": "등촌"},
		  {"brano": 1021, "brand": "메가박스", "branch": "마곡"},
		  {"brano": 1022, "brand": "CGV", "branch": "명동"},
		  {"brano": 1023, "brand": "CGV", "branch": "명동역 씨네라이브러리"},
		  {"brano": 1024, "brand": "CGV", "branch": "목동"},
		  {"brano": 1025, "brand": "메가박스", "branch": "목동"},
		  {"brano": 1026, "brand": "CGV", "branch": "미아"},
		  {"brano": 1027, "brand": "CGV", "branch": "불광"},
		  {"brano": 1028, "brand": "롯데시네마", "branch": "브로드웨이(신사)"},
		  {"brano": 1029, "brand": "CGV", "branch": "상봉"},
		  {"brano": 1030, "brand": "메가박스", "branch": "상봉"},
		  {"brano": 1031, "brand": "메가박스", "branch": "상암월드컵경기장"},
		  {"brano": 1032, "brand": "롯데시네마", "branch": "서울대입구"},
		  {"brano": 1033, "brand": "메가박스", "branch": "성수"},
		  {"brano": 1034, "brand": "CGV", "branch": "성신여대입구"},
		  {"brano": 1035, "brand": "메가박스", "branch": "센트럴"},
		  {"brano": 1036, "brand": "CGV", "branch": "송파"},
		  {"brano": 1037, "brand": "메가박스", "branch": "송파파크하비오"},
		  {"brano": 1038, "brand": "롯데시네마", "branch": "수락산"},
		  {"brano": 1039, "brand": "CGV", "branch": "수유"},
		  {"brano": 1040, "brand": "롯데시네마", "branch": "수유"},
		  {"brano": 1041, "brand": "롯데시네마", "branch": "신도림"},
		  {"brano": 1042, "brand": "롯데시네마", "branch": "신림"},
		  {"brano": 1043, "brand": "메가박스", "branch": "신촌"},
		  {"brano": 1044, "brand": "CGV", "branch": "신촌아트레온"},
		  {"brano": 1045, "brand": "메가박스", "branch": "아트나인"},
		  {"brano": 1046, "brand": "CGV", "branch": "압구정"},
		  {"brano": 1047, "brand": "롯데시네마", "branch": "에비뉴엘(명동)"},
		  {"brano": 1048, "brand": "CGV", "branch": "여의도"},
		  {"brano": 1049, "brand": "CGV", "branch": "영등포"},
		  {"brano": 1050, "brand": "롯데시네마", "branch": "영등포"},
		  {"brano": 1051, "brand": "CGV", "branch": "왕십리"},
		  {"brano": 1052, "brand": "롯데시네마", "branch": "용산"},
		  {"brano": 1053, "brand": "CGV", "branch": "용산아이파크몰"},
		  {"brano": 1054, "brand": "롯데시네마", "branch": "월드타워"},
		  {"brano": 1055, "brand": "롯데시네마", "branch": "은평"},
		  {"brano": 1056, "brand": "메가박스", "branch": "은평"},
		  {"brano": 1057, "brand": "메가박스", "branch": "이수"},
		  {"brano": 1058, "brand": "롯데시네마", "branch": "장안"},
		  {"brano": 1059, "brand": "CGV", "branch": "중계"},
		  {"brano": 1060, "brand": "메가박스", "branch": "창동"},
		  {"brano": 1061, "brand": "CGV", "branch": "천호"},
		  {"brano": 1062, "brand": "CGV", "branch": "청담씨네시티"},
		  {"brano": 1063, "brand": "롯데시네마", "branch": "청량리"},
		  {"brano": 1064, "brand": "메가박스", "branch": "코엑스"},
		  {"brano": 1065, "brand": "CGV", "branch": "피카디리 1958"},
		  {"brano": 1066, "brand": "CGV", "branch": "하계"},
		  {"brano": 1067, "brand": "롯데시네마", "branch": "합정"},
		  {"brano": 1068, "brand": "CGV", "branch": "홍대"},
		  {"brano": 1069, "brand": "메가박스", "branch": "홍대"},
		  {"brano": 1070, "brand": "롯데시네마", "branch": "홍대입구"},
		  {"brano": 1071, "brand": "메가박스", "branch": "화곡"}
	  ],
	 "gyeonggi": [
		 {"brano": 2001, "brand": "CGV", "branch": "경기광주"},
		  {"brano": 2002, "brand": "메가박스", "branch": "고양스타필드"},
		  {"brano": 2003, "brand": "CGV", "branch": "고양행신"},
		  {"brano": 2004, "brand": "CGV", "branch": "광교"},
		  {"brano": 2005, "brand": "CGV", "branch": "광교상현"},
		  {"brano": 2006, "brand": "롯데시네마", "branch": "광교아울렛"},
		  {"brano": 2007, "brand": "롯데시네마", "branch": "광명"},
		  {"brano": 2008, "brand": "롯데시네마", "branch": "광명아울렛"},
		  {"brano": 2009, "brand": "롯데시네마", "branch": "광주터미널"},
		  {"brano": 2010, "brand": "CGV", "branch": "구리"},
		  {"brano": 2011, "brand": "롯데시네마", "branch": "구리아울렛"},
		  {"brano": 2012, "brand": "CGV", "branch": "김포운양"},
		  {"brano": 2013, "brand": "CGV", "branch": "김포풍무"},
		  {"brano": 2014, "brand": "CGV", "branch": "김포한강"},
		  {"brano": 2015, "brand": "메가박스", "branch": "김포한강신도시"},
		  {"brano": 2016, "brand": "메가박스", "branch": "남양주"},
		  {"brano": 2017, "brand": "CGV", "branch": "동백"},
		  {"brano": 2018, "brand": "CGV", "branch": "동수원"},
		  {"brano": 2019, "brand": "CGV", "branch": "동탄"},
		  {"brano": 2020, "brand": "메가박스", "branch": "동탄"},
		  {"brano": 2021, "brand": "CGV", "branch": "동탄역"},
		  {"brano": 2022, "brand": "CGV", "branch": "동탄호수공원"},
		  {"brano": 2023, "brand": "롯데시네마", "branch": "라페스타"},
		  {"brano": 2024, "brand": "롯데시네마", "branch": "마석"},
		  {"brano": 2025, "brand": "메가박스", "branch": "미사강변"},
		  {"brano": 2026, "brand": "CGV", "branch": "배곧"},
		  {"brano": 2027, "brand": "메가박스", "branch": "백석"},
		  {"brano": 2028, "brand": "CGV", "branch": "범계"},
		  {"brano": 2029, "brand": "메가박스", "branch": "별내"},
		  {"brano": 2030, "brand": "롯데시네마", "branch": "병점"},
		  {"brano": 2031, "brand": "CGV", "branch": "부천"},
		  {"brano": 2032, "brand": "롯데시네마", "branch": "부천(신중동역)"},
		  {"brano": 2033, "brand": "메가박스", "branch": "부천스타필드시티"},
		  {"brano": 2034, "brand": "CGV", "branch": "부천역"},
		  {"brano": 2035, "brand": "롯데시네마", "branch": "부천역"},
		  {"brano": 2036, "brand": "CGV", "branch": "부천옥길"},
		  {"brano": 2037, "brand": "CGV", "branch": "북수원"},
		  {"brano": 2038, "brand": "롯데시네마", "branch": "북수원(천천동)"},
		  {"brano": 2039, "brand": "메가박스", "branch": "분당"},
		  {"brano": 2040, "brand": "CGV", "branch": "산본"},
		  {"brano": 2041, "brand": "롯데시네마", "branch": "산본피트인"},
		  {"brano": 2042, "brand": "롯데시네마", "branch": "서수원"},
		  {"brano": 2043, "brand": "CGV", "branch": "서현"},
		  {"brano": 2044, "brand": "CGV", "branch": "성남모란"},
		  {"brano": 2045, "brand": "롯데시네마", "branch": "성남중앙(신흥역)"},
		  {"brano": 2046, "brand": "롯데시네마", "branch": "센트럴락"},
		  {"brano": 2047, "brand": "CGV", "branch": "소풍"},
		  {"brano": 2048, "brand": "롯데시네마", "branch": "송탄"},
		  {"brano": 2049, "brand": "CGV", "branch": "수원"},
		  {"brano": 2050, "brand": "롯데시네마", "branch": "수원"},
		  {"brano": 2051, "brand": "메가박스", "branch": "수원"},
		  {"brano": 2052, "brand": "메가박스", "branch": "수원남문"},
		  {"brano": 2053, "brand": "롯데시네마", "branch": "수지"},
		  {"brano": 2054, "brand": "CGV", "branch": "스타필드시티위례"},
		  {"brano": 2055, "brand": "롯데시네마", "branch": "시화"},
		  {"brano": 2056, "brand": "CGV", "branch": "시흥"},
		  {"brano": 2057, "brand": "메가박스", "branch": "시흥배곧"},
		  {"brano": 2058, "brand": "CGV", "branch": "안산"},
		  {"brano": 2059, "brand": "롯데시네마", "branch": "안산"},
		  {"brano": 2060, "brand": "롯데시네마", "branch": "안산고잔"},
		  {"brano": 2061, "brand": "메가박스", "branch": "안산중앙"},
		  {"brano": 2062, "brand": "CGV", "branch": "안성"},
		  {"brano": 2063, "brand": "롯데시네마", "branch": "안성"},
		  {"brano": 2064, "brand": "메가박스", "branch": "안성스타필드"},
		  {"brano": 2065, "brand": "롯데시네마", "branch": "안양(안양역)"},
		  {"brano": 2066, "brand": "롯데시네마", "branch": "안양일번가"},
		  {"brano": 2067, "brand": "CGV", "branch": "야탑"},
		  {"brano": 2068, "brand": "메가박스", "branch": "양주"},
		  {"brano": 2069, "brand": "롯데시네마", "branch": "양주고읍"},
		  {"brano": 2070, "brand": "CGV", "branch": "양주옥정"},
		  {"brano": 2071, "brand": "CGV", "branch": "역곡"},
		  {"brano": 2072, "brand": "메가박스", "branch": "영통"},
		  {"brano": 2073, "brand": "CGV", "branch": "오리"},
		  {"brano": 2074, "brand": "CGV", "branch": "오산"},
		  {"brano": 2075, "brand": "롯데시네마", "branch": "오산"},
		  {"brano": 2076, "brand": "CGV", "branch": "오산중앙"},
		  {"brano": 2077, "brand": "CGV", "branch": "용인"},
		  {"brano": 2078, "brand": "롯데시네마", "branch": "용인기흥"},
		  {"brano": 2079, "brand": "메가박스", "branch": "용인기흥"},
		  {"brano": 2080, "brand": "롯데시네마", "branch": "용인역북"},
		  {"brano": 2081, "brand": "메가박스", "branch": "용인테크노밸리"},
		  {"brano": 2082, "brand": "롯데시네마", "branch": "위례"},
		  {"brano": 2083, "brand": "CGV", "branch": "의정부"},
		  {"brano": 2084, "brand": "롯데시네마", "branch": "의정부민락"},
		  {"brano": 2085, "brand": "메가박스", "branch": "의정부민락"},
		  {"brano": 2086, "brand": "CGV", "branch": "의정부태흥"},
		  {"brano": 2087, "brand": "CGV", "branch": "이천"},
		  {"brano": 2088, "brand": "롯데시네마", "branch": "인덕원"},
		  {"brano": 2089, "brand": "CGV", "branch": "일산"},
		  {"brano": 2090, "brand": "메가박스", "branch": "일산"},
		  {"brano": 2091, "brand": "메가박스", "branch": "일산벨라시타"},
		  {"brano": 2092, "brand": "CGV", "branch": "정왕"},
		  {"brano": 2093, "brand": "롯데시네마", "branch": "주엽(일산)"},
		  {"brano": 2094, "brand": "CGV", "branch": "죽전"},
		  {"brano": 2095, "brand": "롯데시네마", "branch": "진접"},
		  {"brano": 2096, "brand": "메가박스", "branch": "킨텍스"},
		  {"brano": 2097, "brand": "메가박스", "branch": "파주금촌"},
		  {"brano": 2098, "brand": "CGV", "branch": "파주문산"},
		  {"brano": 2099, "brand": "롯데시네마", "branch": "파주아울렛"},
		  {"brano": 2100, "brand": "CGV", "branch": "파주야당"},
		  {"brano": 2101, "brand": "롯데시네마", "branch": "파주운정"},
		  {"brano": 2102, "brand": "메가박스", "branch": "파주운정"},
		  {"brano": 2103, "brand": "메가박스", "branch": "파주출판도시"},
		  {"brano": 2104, "brand": "CGV", "branch": "판교"},
		  {"brano": 2105, "brand": "CGV", "branch": "평촌"},
		  {"brano": 2106, "brand": "롯데시네마", "branch": "평촌(범계역)"},
		  {"brano": 2107, "brand": "CGV", "branch": "평택"},
		  {"brano": 2108, "brand": "메가박스", "branch": "평택"},
		  {"brano": 2109, "brand": "롯데시네마", "branch": "평택비전"},
		  {"brano": 2110, "brand": "CGV", "branch": "평택소사"},
		  {"brano": 2111, "brand": "CGV", "branch": "포천"},
		  {"brano": 2112, "brand": "메가박스", "branch": "하남스타필드"},
		  {"brano": 2113, "brand": "롯데시네마", "branch": "향남"},
		  {"brano": 2114, "brand": "CGV", "branch": "화성봉담"},
		  {"brano": 2115, "brand": "CGV", "branch": "화정"}
	  ],
	 "incheon": [
		 {"brano": 3001, "brand": "롯데시네마", "branch": "검단"},
		 {"brano": 3002, "brand": "메가박스", "branch": "검단"},
		 {"brano": 3003, "brand": "CGV", "branch": "계양"},
		 {"brano": 3004, "brand": "CGV", "branch": "남주안"},
		 {"brano": 3005, "brand": "CGV", "branch": "부평"},
		 {"brano": 3006, "brand": "롯데시네마", "branch": "부평"},
		 {"brano": 3007, "brand": "롯데시네마", "branch": "부평역사"},
		 {"brano": 3008, "brand": "메가박스", "branch": "송도"},
		 {"brano": 3009, "brand": "CGV", "branch": "연수역"},
		 {"brano": 3010, "brand": "메가박스", "branch": "영종"},
		 {"brano": 3011, "brand": "롯데시네마", "branch": "영종하늘도시"},
		 {"brano": 3012, "brand": "CGV", "branch": "인천"},
		 {"brano": 3013, "brand": "CGV", "branch": "인천공항"},
		 {"brano": 3014, "brand": "CGV", "branch": "인천논현"},
		 {"brano": 3015, "brand": "메가박스", "branch": "인천논현"},
		 {"brano": 3016, "brand": "롯데시네마", "branch": "인천아시아드"},
		 {"brano": 3017, "brand": "CGV", "branch": "인천연수"},
		 {"brano": 3018, "brand": "롯데시네마", "branch": "인천터미널"},
		 {"brano": 3019, "brand": "CGV", "branch": "인천학익"},
		 {"brano": 3020, "brand": "CGV", "branch": "주안역"},
		 {"brano": 3021, "brand": "CGV", "branch": "청라"},
		 {"brano": 3022, "brand": "메가박스", "branch": "청라지젤"}
	  ],
	 "gangwon": [
		 {"brano": 4001, "brand": "CGV", "branch": "강릉"},
		  {"brano": 4002, "brand": "롯데시네마", "branch": "남원주"},
		  {"brano": 4003, "brand": "메가박스", "branch": "남춘천"},
		  {"brano": 4004, "brand": "롯데시네마", "branch": "동해"},
		  {"brano": 4005, "brand": "메가박스", "branch": "속초"},
		  {"brano": 4006, "brand": "CGV", "branch": "원주"},
		  {"brano": 4007, "brand": "메가박스", "branch": "원주"},
		  {"brano": 4008, "brand": "롯데시네마", "branch": "원주무실"},
		  {"brano": 4009, "brand": "메가박스", "branch": "원주센트럴"},
		  {"brano": 4010, "brand": "CGV", "branch": "인제"},
		  {"brano": 4011, "brand": "CGV", "branch": "춘천"},
		  {"brano": 4012, "brand": "롯데시네마", "branch": "춘천"}
	  ],
	 "daejeon": [
		 {"brano": 5001, "brand": "CGV", "branch": "대전"},
		  {"brano": 5002, "brand": "롯데시네마", "branch": "대전"},
		  {"brano": 5003, "brand": "메가박스", "branch": "대전"},
		  {"brano": 5004, "brand": "CGV", "branch": "대전가수원"},
		  {"brano": 5005, "brand": "CGV", "branch": "대전가오"},
		  {"brano": 5006, "brand": "롯데시네마", "branch": "대전관저"},
		  {"brano": 5007, "brand": "롯데시네마", "branch": "대전둔산"},
		  {"brano": 5008, "brand": "롯데시네마", "branch": "대전센트럴"},
		  {"brano": 5009, "brand": "메가박스", "branch": "대전유성"},
		  {"brano": 5010, "brand": "메가박스", "branch": "대전중앙로"},
		  {"brano": 5011, "brand": "CGV", "branch": "대전탄방"},
		  {"brano": 5012, "brand": "CGV", "branch": "대전터미널"},
		  {"brano": 5013, "brand": "메가박스", "branch": "대전현대아울렛"},
		  {"brano": 5014, "brand": "CGV", "branch": "유성노은"}
	  ],
	 "chungcheong": [
		 {"brano": 6001, "brand": "메가박스", "branch": "공주"},
		  {"brano": 6002, "brand": "메가박스", "branch": "논산"},
		  {"brano": 6003, "brand": "CGV", "branch": "당진"},
		  {"brano": 6004, "brand": "CGV", "branch": "보령"},
		  {"brano": 6005, "brand": "CGV", "branch": "서산"},
		  {"brano": 6006, "brand": "롯데시네마", "branch": "서산"},
		  {"brano": 6007, "brand": "롯데시네마", "branch": "서청주"},
		  {"brano": 6008, "brand": "CGV", "branch": "세종"},
		  {"brano": 6009, "brand": "메가박스", "branch": "세종(조치원)"},
		  {"brano": 6010, "brand": "메가박스", "branch": "세종나성"},
		  {"brano": 6011, "brand": "메가박스", "branch": "세종청사"},
		  {"brano": 6012, "brand": "롯데시네마", "branch": "아산터미널"},
		  {"brano": 6013, "brand": "메가박스", "branch": "오창"},
		  {"brano": 6014, "brand": "메가박스", "branch": "제천"},
		  {"brano": 6015, "brand": "메가박스", "branch": "진천"},
		  {"brano": 6016, "brand": "CGV", "branch": "천안"},
		  {"brano": 6017, "brand": "메가박스", "branch": "천안"},
		  {"brano": 6018, "brand": "CGV", "branch": "천안터미널"},
		  {"brano": 6019, "brand": "CGV", "branch": "천안펜타포트"},
		  {"brano": 6020, "brand": "롯데시네마", "branch": "청주"},
		  {"brano": 6021, "brand": "CGV", "branch": "청주(서문)"},
		  {"brano": 6022, "brand": "메가박스", "branch": "청주사창"},
		  {"brano": 6023, "brand": "CGV", "branch": "청주성안길"},
		  {"brano": 6024, "brand": "롯데시네마", "branch": "청주용암"},
		  {"brano": 6025, "brand": "CGV", "branch": "청주율량"},
		  {"brano": 6026, "brand": "CGV", "branch": "청주지웰시티"},
		  {"brano": 6027, "brand": "CGV", "branch": "청주터미널"},
		  {"brano": 6028, "brand": "CGV", "branch": "충남논산"},
		  {"brano": 6029, "brand": "CGV", "branch": "충북혁신"},
		  {"brano": 6030, "brand": "롯데시네마", "branch": "충주"},
		  {"brano": 6031, "brand": "메가박스", "branch": "충주"},
		  {"brano": 6032, "brand": "CGV", "branch": "홍성"},
		  {"brano": 6033, "brand": "메가박스", "branch": "홍성내포"}
	  ],
	 "gwangju": [
		 {"brano": 7001, "brand": "롯데시네마", "branch": "광주"},
		 {"brano": 7002, "brand": "롯데시네마", "branch": "광주광산"},
		  {"brano": 7003, "brand": "CGV", "branch": "광주금남로"},
		  {"brano": 7004, "brand": "CGV", "branch": "광주상무"},
		  {"brano": 7005, "brand": "메가박스", "branch": "광주상무"},
		  {"brano": 7006, "brand": "CGV", "branch": "광주용봉"},
		  {"brano": 7007, "brand": "CGV", "branch": "광주첨단"},
		  {"brano": 7008, "brand": "CGV", "branch": "광주충장로"},
		  {"brano": 7009, "brand": "CGV", "branch": "광주터미널"},
		  {"brano": 7010, "brand": "CGV", "branch": "광주하남"},
		  {"brano": 7011, "brand": "메가박스", "branch": "광주하남"},
		  {"brano": 7012, "brand": "롯데시네마", "branch": "수완"},
		  {"brano": 7013, "brand": "메가박스", "branch": "전대(광주)"},
		  {"brano": 7014, "brand": "메가박스", "branch": "첨단"},
		  {"brano": 7015, "brand": "롯데시네마", "branch": "충장로"}
		  ],
	 "jeolla": [
		 {"brano": 8001, "brand": "CGV", "branch": "광양"},
		  {"brano": 8002, "brand": "CGV", "branch": "광양엘에프스퀘어"},
		  {"brano": 8003, "brand": "CGV", "branch": "군산"},
		  {"brano": 8004, "brand": "롯데시네마", "branch": "군산나운"},
		  {"brano": 8005, "brand": "롯데시네마", "branch": "군산몰"},
		  {"brano": 8006, "brand": "CGV", "branch": "나주"},
		  {"brano": 8007, "brand": "메가박스", "branch": "남원"},
		  {"brano": 8008, "brand": "CGV", "branch": "목포"},
		  {"brano": 8009, "brand": "CGV", "branch": "목포평화광장"},
		  {"brano": 8010, "brand": "메가박스", "branch": "목포하당"},
		  {"brano": 8011, "brand": "CGV", "branch": "서전주"},
		  {"brano": 8012, "brand": "메가박스", "branch": "송천"},
		  {"brano": 8013, "brand": "CGV", "branch": "순천"},
		  {"brano": 8014, "brand": "메가박스", "branch": "순천"},
		  {"brano": 8015, "brand": "CGV", "branch": "순천신대"},
		  {"brano": 8016, "brand": "CGV", "branch": "여수웅천"},
		  {"brano": 8017, "brand": "메가박스", "branch": "여수웅천"},
		  {"brano": 8018, "brand": "CGV", "branch": "익산"},
		  {"brano": 8019, "brand": "롯데시네마", "branch": "익산모현"},
		  {"brano": 8020, "brand": "롯데시네마", "branch": "전주"},
		  {"brano": 8021, "brand": "CGV", "branch": "전주고사"},
		  {"brano": 8022, "brand": "롯데시네마", "branch": "전주평화"},
		  {"brano": 8023, "brand": "CGV", "branch": "전주효자"},
		  {"brano": 8024, "brand": "CGV", "branch": "정읍"}
	  ],
	 "daegu": [
		 {"brano": 9001, "brand": "메가박스", "branch": "경북도청"},
		  {"brano": 9002, "brand": "롯데시네마", "branch": "경산"},
		  {"brano": 9003, "brand": "메가박스", "branch": "경산하양"},
		  {"brano": 9004, "brand": "롯데시네마", "branch": "경주"},
		  {"brano": 9005, "brand": "메가박스", "branch": "경주"},
		  {"brano": 9006, "brand": "CGV", "branch": "구미"},
		  {"brano": 9007, "brand": "메가박스", "branch": "구미강동"},
		  {"brano": 9008, "brand": "롯데시네마", "branch": "구미공단"},
		  {"brano": 9009, "brand": "메가박스", "branch": "김천"},
		  {"brano": 9010, "brand": "CGV", "branch": "김천율곡"},
		  {"brano": 9011, "brand": "메가박스", "branch": "남포항"},
		  {"brano": 9012, "brand": "CGV", "branch": "대구"},
		  {"brano": 9013, "brand": "메가박스", "branch": "대구(칠성로)"},
		  {"brano": 9014, "brand": "롯데시네마", "branch": "대구광장"},
		  {"brano": 9015, "brand": "CGV", "branch": "대구수성"},
		  {"brano": 9016, "brand": "CGV", "branch": "대구스타디움"},
		  {"brano": 9017, "brand": "메가박스", "branch": "대구신세계(동대구)"},
		  {"brano": 9018, "brand": "CGV", "branch": "대구아카데미"},
		  {"brano": 9019, "brand": "CGV", "branch": "대구월성"},
		  {"brano": 9020, "brand": "롯데시네마", "branch": "대구율하"},
		  {"brano": 9021, "brand": "CGV", "branch": "대구이시아"},
		  {"brano": 9022, "brand": "메가박스", "branch": "대구이시아"},
		  {"brano": 9023, "brand": "CGV", "branch": "대구칠곡"},
		  {"brano": 9024, "brand": "CGV", "branch": "대구한일"},
		  {"brano": 9025, "brand": "CGV", "branch": "대구현대"},
		  {"brano": 9026, "brand": "롯데시네마", "branch": "대구현풍"},
		  {"brano": 9027, "brand": "롯데시네마", "branch": "동성로"},
		  {"brano": 9028, "brand": "메가박스", "branch": "문경"},
		  {"brano": 9029, "brand": "메가박스", "branch": "북대구(칠곡)"},
		  {"brano": 9030, "brand": "CGV", "branch": "북포항"},
		  {"brano": 9031, "brand": "롯데시네마", "branch": "상인"},
		  {"brano": 9032, "brand": "롯데시네마", "branch": "상주"},
		  {"brano": 9033, "brand": "롯데시네마", "branch": "성서"},
		  {"brano": 9034, "brand": "CGV", "branch": "안동"},
		  {"brano": 9035, "brand": "롯데시네마", "branch": "영주"},
		  {"brano": 9036, "brand": "CGV", "branch": "포항"},
		  {"brano": 9037, "brand": "롯데시네마", "branch": "포항"},
		  {"brano": 9038, "brand": "롯데시네마", "branch": "프리미엄구미센트럴"},
		  {"brano": 9039, "brand": "롯데시네마", "branch": "프리미엄만경"},
		  {"brano": 9040, "brand": "롯데시네마", "branch": "프리미엄안동"},
		  {"brano": 9041, "brand": "롯데시네마", "branch": "프리미엄칠곡"}
	  ],
	 "busan": [
		 {"brano": 10001, "brand": "롯데시네마", "branch": "광복"},
		  {"brano": 10002, "brand": "CGV", "branch": "남포"},
		  {"brano": 10003, "brand": "CGV", "branch": "대연"},
		  {"brano": 10004, "brand": "롯데시네마", "branch": "대영"},
		  {"brano": 10005, "brand": "메가박스", "branch": "덕천"},
		  {"brano": 10006, "brand": "CGV", "branch": "동래"},
		  {"brano": 10007, "brand": "롯데시네마", "branch": "동래"},
		  {"brano": 10008, "brand": "롯데시네마", "branch": "동부산아울렛"},
		  {"brano": 10009, "brand": "메가박스", "branch": "부산극장"},
		  {"brano": 10010, "brand": "메가박스", "branch": "부산대"},
		  {"brano": 10011, "brand": "롯데시네마", "branch": "부산본점"},
		  {"brano": 10012, "brand": "롯데시네마", "branch": "사상"},
		  {"brano": 10013, "brand": "CGV", "branch": "서면"},
		  {"brano": 10014, "brand": "롯데시네마", "branch": "서면(전포동)"},
		  {"brano": 10015, "brand": "CGV", "branch": "서면삼정타워"},
		  {"brano": 10016, "brand": "CGV", "branch": "센텀시티"},
		  {"brano": 10017, "brand": "롯데시네마", "branch": "센텀시티"},
		  {"brano": 10018, "brand": "CGV", "branch": "아시아드"},
		  {"brano": 10019, "brand": "롯데시네마", "branch": "오투(부산대)"},
		  {"brano": 10020, "brand": "메가박스", "branch": "울산"},
		  {"brano": 10021, "brand": "롯데시네마", "branch": "울산"},
		  {"brano": 10022, "brand": "CGV", "branch": "울산삼산"},
		  {"brano": 10023, "brand": "롯데시네마", "branch": "울산성남"},
		  {"brano": 10024, "brand": "CGV", "branch": "울산신천"},
		  {"brano": 10025, "brand": "CGV", "branch": "울산진장"},
		  {"brano": 10026, "brand": "CGV", "branch": "정관"},
		  {"brano": 10027, "brand": "메가박스", "branch": "정관"},
		  {"brano": 10028, "brand": "롯데시네마", "branch": "프리미엄해운대"},
		  {"brano": 10029, "brand": "CGV", "branch": "하단아트몰링"},
		  {"brano": 10030, "brand": "CGV", "branch": "해운대"},
		  {"brano": 10031, "brand": "메가박스", "branch": "해운대(장산)"},
		  {"brano": 10032, "brand": "CGV", "branch": "화명"}
	  ],
	 "gyeongnam": [
		 {"brano": 11001, "brand": "CGV", "branch": "거제"},
		  {"brano": 11002, "brand": "롯데시네마", "branch": "거창"},
		  {"brano": 11003, "brand": "CGV", "branch": "김해"},
		  {"brano": 11004, "brand": "롯데시네마", "branch": "김해부원"},
		  {"brano": 11005, "brand": "롯데시네마", "branch": "김해아울렛"},
		  {"brano": 11006, "brand": "CGV", "branch": "김해율하"},
		  {"brano": 11007, "brand": "CGV", "branch": "김해장유"},
		  {"brano": 11008, "brand": "CGV", "branch": "마산"},
		  {"brano": 11009, "brand": "메가박스", "branch": "마산"},
		  {"brano": 11010, "brand": "롯데시네마", "branch": "마산(합성동)"},
		  {"brano": 11011, "brand": "롯데시네마", "branch": "사천"},
		  {"brano": 11012, "brand": "메가박스", "branch": "삼천포"},
		  {"brano": 11013, "brand": "메가박스", "branch": "양산"},
		  {"brano": 11014, "brand": "메가박스", "branch": "양산라피에스타"},
		  {"brano": 11015, "brand": "CGV", "branch": "양산물금"},
		  {"brano": 11016, "brand": "CGV", "branch": "양산삼호"},
		  {"brano": 11017, "brand": "롯데시네마", "branch": "진주엠비씨네"},
		  {"brano": 11018, "brand": "롯데시네마", "branch": "진주혁신"},
		  {"brano": 11019, "brand": "롯데시네마", "branch": "진해"},
		  {"brano": 11020, "brand": "CGV", "branch": "창원"},
		  {"brano": 11021, "brand": "롯데시네마", "branch": "창원"},
		  {"brano": 11022, "brand": "메가박스", "branch": "창원"},
		  {"brano": 11023, "brand": "메가박스", "branch": "창원내서"},
		  {"brano": 11024, "brand": "CGV", "branch": "창원더시티"},
		  {"brano": 11025, "brand": "CGV", "branch": "통영"},
		  {"brano": 11026, "brand": "롯데시네마", "branch": "통영"},
		  {"brano": 11027, "brand": "롯데시네마", "branch": "프리미엄경남대"},
		  {"brano": 11028, "brand": "롯데시네마", "branch": "프리미엄진주"}
	  ],
	 "jeju": [
		 {"brano": 12001, "brand": "롯데시네마", "branch": "서귀포"},
		  {"brano": 12002, "brand": "CGV", "branch": "제주"},
		  {"brano": 12003, "brand": "메가박스", "branch": "제주"},
		  {"brano": 12004, "brand": "CGV", "branch": "제주노형"},
		  {"brano": 12005, "brand": "롯데시네마", "branch": "제주삼화지구"},
		  {"brano": 12006, "brand": "롯데시네마", "branch": "제주아라"}
	  ]};

/* ContextPath 구하기 */
function getContextPath() {
	var hostIndex=location.href.indexOf(location.host)+location.host.length;
	var contextPath=location.href.substring(hostIndex, location.href.indexOf('/', hostIndex+1));
	return contextPath;
}

console.log(getContextPath());

/* viewname 구하기 */
function getViewName() {
	var pathname=location.pathname;
	var viewname=pathname.substring(pathname.lastIndexOf('/'));
	return viewname;
}

console.log(getViewName());

$(function() {
	// 극장별 상세 페이지에서 각 지역별 극장 목록 노출 기능 구현
	$("#seoul1").click(function() {
		var html="";
		for (var i=0; i<b_json.seoul.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+10+"&theaterId="+b_json.seoul[i].brano+"'>"+b_json.seoul[i].brand+" "+b_json.seoul[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "500");
	});
	$("#gyeonggi1").click(function() {
		var html="";
		for (var i=0; i<b_json.gyeonggi.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+20+"&theaterId="+b_json.gyeonggi[i].brano+"'>"+b_json.gyeonggi[i].brand+" "+b_json.gyeonggi[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "500");
	});
	$("#incheon1").click(function() {
		var html="";
		for (var i=0; i<b_json.incheon.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+30+"&theaterId="+b_json.incheon[i].brano+"'>"+b_json.incheon[i].brand+" "+b_json.incheon[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "300");
	});
	$("#gangwon1").click(function() {
		var html="";
		for (var i=0; i<b_json.gangwon.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+40+"&theaterId="+b_json.gangwon[i].brano+"'>"+b_json.gangwon[i].brand+" "+b_json.gangwon[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "200");
	});
	$("#daejeon1").click(function() {
		var html="";
		for (var i=0; i<b_json.daejeon.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+50+"&theaterId="+b_json.daejeon[i].brano+"'>"+b_json.daejeon[i].brand+" "+b_json.daejeon[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "200");
	});
	$("#chungcheong1").click(function() {
		var html="";
		for (var i=0; i<b_json.chungcheong.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+60+"&theaterId="+b_json.chungcheong[i].brano+"'>"+b_json.chungcheong[i].brand+" "+b_json.chungcheong[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "350");
	});
	$("#gwangju1").click(function() {
		var html="";
		for (var i=0; i<b_json.gwangju.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+70+"&theaterId="+b_json.gwangju[i].brano+"'>"+b_json.gwangju[i].brand+" "+b_json.gwangju[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "200");
	});
	$("#jeolla1").click(function() {
		var html="";
		for (var i=0; i<b_json.jeolla.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+80+"&theaterId="+b_json.jeolla[i].brano+"'>"+b_json.jeolla[i].brand+" "+b_json.jeolla[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "300");
	});
	$("#daegu1").click(function() {
		var html="";
		for (var i=0; i<b_json.daegu.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+90+"&theaterId="+b_json.daegu[i].brano+"'>"+b_json.daegu[i].brand+" "+b_json.daegu[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "400");
	});
	$("#busan1").click(function() {
		var html="";
		for (var i=0; i<b_json.busan.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+100+"&theaterId="+b_json.busan[i].brano+"'>"+b_json.busan[i].brand+" "+b_json.busan[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "350");
	});
	$("#gyeongnam1").click(function() {
		var html="";
		for (var i=0; i<b_json.gyeongnam.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+110+"&theaterId="+b_json.gyeongnam[i].brano+"'>"+b_json.gyeongnam[i].brand+" "+b_json.gyeongnam[i].branch+"</a></li>\n";
		}
		$("#branch_list").html(html);
		$(".branch_list").css("height", "350");
	});
	$("#jeju1").click(function() {
		var html="";
		for (var i=0; i<b_json.jeju.length; i++) {
			html+="<li><a href='"+getContextPath()+getViewName()+"?provNo="+120+"&theaterId="+b_json.jeju[i].brano+"'>"+b_json.jeju[i].brand+" "+b_json.jeju[i].branch+"</a></li>\n";
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