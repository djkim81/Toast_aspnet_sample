function toastify(type, msg, title, position, showclosebutton,loader) {
    var icontype, location, closebutton, loaderUse;
    if (type == null || type == '') {
        icontype = 'success';
    }
    else {
        icontype = type;
    }
    if (position == null || position == '') {
        location = 'mid-center';
    }
    else {
        location = position;
    }
    if (showclosebutton == null || showclosebutton == '' || showclosebutton == 'false') {
        closebutton = false;
    }
    else {
        closebutton = true;;
    }
    if (loader == null || loader == '' || loader =='false') {
        loaderUse = false;
    }
    else {
        loaderUse = true;
    }
    $.toast({
        text: msg, // 보여줄 메시지 내용
        heading: title,  // 보여줄 타이틀 내용
        icon: icontype, // icon type (warning,Success,Error,Information 중 선택)
        showHideTransition: 'fade', // 창이 나타나는 효과(fade, slide, plain 중 선택)
        allowToastClose: closebutton, // 사용자 닫기 버튼(x)를 사용할지 여부
        hideAfter: 1500, //false처리 할 경우 sticky 형태로 자동 닫힘이 안되며, ms단위로 넣을 경우 ms 후에 자동으로 창이 사라짐
        stack: false, // false처리 할 경우 한번에 하나의 창만 나타나며, 숫자를 넣을 경우 최대 창 갯수를 나타냄
        position: location, //창 위치(bottom-left, bottom-right, bottom-center,top-left,top-right,top-center,mid-center, 사용자 정의값(left, right, top, bottom) 중 선택)
        textAlign: 'left',  // 메시지 정렬 위치(left, right or center 중 선택)
        loader: loaderUse,  // loader bar를 보여줄지 말지 여부(기본값: true)
        loaderBg: '#9EC600',  // // loader bar 색
        beforeShow: function () { }, // toast가 메세지 보여주기 전에 이벤트
        afterShown: function () { }, // toast가 메세지 보여준 이후에 이벤트
        beforeHide: function () { }, // toast가 닫힘 처리 전에 이벤트
        afterHidden: function () { }   // toast가 닫힘 처리 이후에 이벤트
    });

}