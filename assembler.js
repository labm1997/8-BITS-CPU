var opcode={cmp: 0x0, lb: 0xa, sb: 0x1, lui: 0x3, sla: 0x4, sra: 0x5, and: 0x6, or: 0x7, add: 0x8, br: 0xb, jeq: 0xc, jgt: 0xd, jc: 0xe, j: 0xf}

String.prototype.convert = function(){
	var a=this.split(" #")[0].split(" ");
	var op=opcode[a[0]];
	if(a.length == 3) return op | (parseInt(a[1]) << 4) | (parseInt(a[2]) << 6);
	else return op | (parseInt(a[1]) << 4);
}

function montar(input){
 return "v2.0 raw\n" + input.split("\n").map(x => x.convert().toString(16)).join(" ");
}
