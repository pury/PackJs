var file_5 = function()
{
	this.name = "file_5";
};

file_5.prototype.show = function()
{
	console.log(this.name);
}

var obj = new file_5;
obj.show();