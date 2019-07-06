$(function() {
    'use strict';

    $('#practice-report').fileupload({
        url: '/student/upload/19',
        maxFileSize: 20 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制20M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(docx?|pdf)$/i
    });

})