var file_2 = function()
{
	this.name = "file_2";
};

file_2.prototype.show = function()
{
	console.log(this.name);
}

var obj = new file_2;
obj.show();