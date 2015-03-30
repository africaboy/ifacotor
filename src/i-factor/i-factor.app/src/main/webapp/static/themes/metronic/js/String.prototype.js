String.prototype.trim = function () {
    // ��������ʽ��ǰ��ո�  
    // �ÿ��ַ������ 
    return this.replace(/(^\s*)|(\s*$)/g, "");
}

String.prototype.ltrim = function () {
    return this.replace(/(^\s*)/g, "");
}

String.prototype.rtrim = function () {
    return this.replace(/(\s*$)/g, "");
}

String.prototype.startsWith = function (str) {
    return (this.match("^" + str) == str);
}

String.prototype.endsWith = function (str) {
    return (this.match(str + "$") == str);
}
