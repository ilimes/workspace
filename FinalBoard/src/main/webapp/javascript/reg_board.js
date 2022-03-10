//체크박스가 체크되면 비밀번호를 적을 input태그를 생성
//체크박스가 체크 해제되면 비밀번호를 적을 input태그를 삭제
function setPassword(){
	const chk = document.getElementById('chk');
	const isChecked = chk.checked;
	
	//체크됐을때
	if(isChecked){
		//input 태그를 생성
		const pwInput = document.createElement('input');//<input>
		pwInput.type = 'password';//<input type="password">
		
		//노드 추가 방법
		//appendChild(추가할 태그); : 선택된 태그의 마지막 자식으로 추가
		//const target = document.getElementById('boardWriteForm');
		const target = document.getElementsByClassName('inputDiv');
		//target.appendChild(pwInput);
		
		//insertBefore(추가할 태그, 추가할 위치);
		//두번째 매개변수 앞 위치에 첫번째 매개변수가 추가
		//target.lastElementChild; -> 선택한 태그의 마지막 자식
		//target.firstElementChild; -> 선택한 태그의 첫번째 자식
		//target[0].insertBefore(pwInput, target[0].lastElementChild);
		target[0].appendChild(pwInput);
		
	}
	else{
		
	}
		
}
