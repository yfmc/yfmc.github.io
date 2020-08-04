    /* jQuery 적용 인원 증가 소스 연습 */

    // 버튼 클릭 횟수 count
    var count=[0, 0, 0];

    $(function() {
        // 성인
        $("#minus0").click(function(e) {
            if (count[0]>0) {
                count[0]--;
                $("#count0").html(count[0]);
            }
        });

        $("#plus0").click(function(e) {
            count[0]++;
            $("#count0").html(count[0]);

            // 8명 초과 선택 못하게 하기
            if (count[0]+count[1]+count[2]>8) {
                alert("최대 8명까지만 선택 가능합니다");
                count[0]--;
                $("#count0").html(count[0]);
            }
        });

        // 청소년
        $("#minus1").click(function(e) {
            if (count[1]>0) {
                count[1]--;
                $("#count1").html(count[1]);
            }
        });

        $("#plus1").click(function(e) {
            count[1]++;
            $("#count1").html(count[1]);

            // 8명 초과 선택 못하게 하기
            if (count[0]+count[1]+count[2]>8) {
                alert("최대 8명까지만 선택 가능합니다");
                count[1]--;
                $("#count1").html(count[1]);
            }
        });

        // 장애인
        $("#minus2").click(function(e) {
            if (count[2]>0) {
                count[2]--;
                $("#count2").html(count[2]);
            }
        });

        $("#plus2").click(function(e) {
            count[2]++;
            $("#count2").html(count[2]);

            // 8명 초과 선택 못하게 하기
            if (count[0]+count[1]+count[2]>8) {
                alert("최대 8명까지만 선택 가능합니다");
                count[2]--;
                $("#count2").html(count[2]);
            }
        });
    });