var file_1 = function()
{
	this.name = "file_1";
};

file_1.prototype.show = function()
{
	console.log(this.name);
}

var obj = new file_1;
obj.show();