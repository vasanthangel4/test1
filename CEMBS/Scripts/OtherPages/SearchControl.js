﻿function setBlurFocus() {var user_input = document.getElementById('search_txt');user_input.onblur = setFocus();user_input.onfocus = setBlur();}function setFocus() {document.getElementById('search_txt').value = 'Search your text here....';}function setBlur() {document.getElementById('search_txt').value = '';}$(document).ready(function () {$("[id$='search_txt']").focus(function () {$("[id$='search_txt']").animate({ width: '293px', overflow: 'visible' }, 400);}); $("[id$='search_txt']").blur(function () { $("[id$='search_txt']").animate({ width: '140px' }, 300);});});