var isIE = function(ver){
    var b = document.createElement('b')
    b.innerHTML = '<!--[if IE ' + ver + ']><i></i><![endif]-->'
    return b.getElementsByTagName('i').length === 1
}

// alert('ie5:' + isIE(5) + '\n' + 'ie6:' + isIE(6) + '\n' + 'ie7:' + isIE(7) + '\n' + 'ie8:' + isIE(8) + '\n' + 'ie9:' + isIE(9) + '\n' + 'ie:' + isIE())
if(isIE()) {
    window.location.href="/static/html/notcompatible.html";
}

if(isIE(7)) {
	// alert("您的浏览器版本太低，请下载使用chrome、Firefox、搜狗等浏览器！");
	window.location.href="/static/html/notcompatible.html";
}

if(isIE(6)) {
	// alert("您的浏览器版本太低，请下载使用chrome、Firefox、搜狗等浏览器！")
	window.location.href="/static/html/notcompatible.html";
}

if(isIE(5)) {
	// alert("您的浏览器版本太低，请下载使用chrome、Firefox、搜狗等浏览器！")
	window.location.href="/static/html/notcompatible.html";
}

if(isIE(4)) {
	// alert("您的浏览器版本太低，请下载使用chrome、Firefox、搜狗等浏览器！")
	window.location.href="/static/html/notcompatible.html";
}

