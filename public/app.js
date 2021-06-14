
function aaa()
	{
		var x = window.localStorage.getItem('xxx');
		x = x*1 + 1;
		window.localStorage.setItem('xxx', x );
		alert(x);
	}

function add_to_cart(id)
{
	alert('You added pizza whith id:' + id);
}	