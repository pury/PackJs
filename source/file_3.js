var file_3 = function()
{
	this.name = "file_3";
};

file_3.prototype.show = function()
{
	console.log(this.name);
}

var obj = new file_3;
obj.show();