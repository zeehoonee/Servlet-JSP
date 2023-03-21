function 로그인() {
	id2 = 'root';
	id = prompt('아이디 입력')
	if (id == id2) { 
		alert('로그인 성공')
	} else {
		alert('로그인 실패')
	}
} 

function 비교(){
	n1 = 100
	n2 = 200
	//두 숫자가 동일한지/동일하지 않은지 판별하여 프린트.
	if (n1 == n2) {
		alert('동일함.')
	} else {
	 	alert('동일하지 않음')
	}
}
	
	function 기분(){

	m1 = prompt('친구 기분어때?')
	m2 = prompt('내 기분어때?')
	//동일한지/동일하지 않은지 판별하여 프린트
	if (m1 == m2) {
		alert('동일함.')
	} else {
	 	alert('동일하지 않음')
	}
}