const shell = require('shelljs');
shell.config.execPath = shell.which('node').toString();
function extract(data) {
	var file = document.getElementById(data).value;
	shell.exec(`tar -xzvf ${file}`);
}
function compress(data) {
	var file = document.getElementById(data).value;
	shell.exec(`tar -czvf ${file}`);
}
