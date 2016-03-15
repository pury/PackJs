var file_4 = function()
{
	this.name = "file_4";
};

file_4.prototype.show = function()
{
	console.log(this.name);
}

var obj = new file_4;
obj.show();