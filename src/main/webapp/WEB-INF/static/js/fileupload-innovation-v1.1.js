$(function() {
    'use strict';

    //上传国创申请书
    $('#innova-apply').fileupload({
        url: 'upload/12',
        maxFileSize: 20 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制20M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(docx?)$/i
    });


    //上传国创开题报告
    $('#innova-opening').fileupload({
        url: 'upload/11',
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

//上传国创任务书
    $('#innova-task').fileupload({
        url: 'upload/13',
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

//上传国创中期检查表
    $('#innova-midterm').fileupload({
        url: 'upload/14',
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

    //上传国创中期检查PPT
    $('#innova-midterm-ppt').fileupload({
        url: 'upload/15',
        maxFileSize: 50 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制50M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(pptx?|pdf)$/i
    });

    //上传国创结题报告
    $('#innova-final').fileupload({
        url: 'upload/17',
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

    //上传国创结题PPT
    $('#innova-final-ppt').fileupload({
        url: 'upload/18',
        maxFileSize: 50 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制50M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(pptx?|pdf)$/i
    });

    //上传验收作品简介
    $("#innova-final-introduce").fileupload({
        url: 'upload/21',
        maxFileSize: 50 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制50M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(docx?|pdf)$/i
    });

    //上传项目总结报告
    $("#innova-final-conclusion").fileupload({
        url: 'upload/22',
        maxFileSize: 50 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制50M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(docx?|pdf)$/i
    });
});