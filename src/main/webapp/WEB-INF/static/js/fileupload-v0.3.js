/* 
 *   上传组件配置
 *   每个上传内容对应一个配置
 */

$(function() {
    'use strict';

    //上传诚信书
    $('#honesty').fileupload({
        url: 'upload/1',
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

    //上传计划书
    $('#task').fileupload({
        url: 'upload/10',
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

    //上传计划书
    $('#planing').fileupload({
        url: 'upload/2',
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

    //上传开题报告
    $('#fileupload-open').fileupload({
        url: 'upload/3',
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

    //上传中期检查表
    $('#midterm').fileupload({
        url: 'upload/4',
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
    //上传中期答辩PPT
    $('#midterm-ppt').fileupload({
        url: 'upload/41',
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

    //上传毕业答辩PPT
    $('#graduation-ppt').fileupload({
        url: 'upload/61',
        maxFileSize: 50 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制50M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(pptx?)$/i
    });

    //上传成绩登记表
    $('#scorebook').fileupload({
        url: 'upload/5',
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

    //上传论文 pdf
    $('#graduation').fileupload({
        url: 'upload/6',
        maxFileSize: 40 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制40M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(pdf)$/i
    });

    //上传论文 docx?
    $('#graduation-editable').fileupload({
        url: 'upload/16',
        maxFileSize: 40 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制40M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(docx?|rar|zip)$/i
    });

    //上传翻译资料译文
    $('#translation-text').fileupload({
        url: 'upload/62',
        maxFileSize: 20 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制20M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(docx?|pdf|zip|rar)$/i
    });

    //上传翻译资料原文
    $('#translation-original').fileupload({
        url: 'upload/63',
        maxFileSize: 20 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制20M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(docx?|pdf|zip|rar)$/i
    });

    //上传论文封面
    $('#paper-cover').fileupload({
        url: 'upload/64',
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

    //上传指导教师成绩评定意见表
    $('#teacher-view').fileupload({
        url: 'upload/65',
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

    //上传评阅人成绩评定意见表
    $('#expert-view').fileupload({
        url: 'upload/66',
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

    //上传答辩小组意见表
    $('#group-view').fileupload({
        url: 'upload/67',
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

    //上传查重表
    $('#copy-table').fileupload({
        url: 'upload/68',
        maxFileSize: 20 * 1024 * 1024,
        maxNumberOfFiles: 1,
        messages: {
            maxNumberOfFiles: '只允许上传一个文件',
            acceptFileTypes: '文件类型不符合',
            maxFileSize: '文件太大，限制20M以内',
            minFileSize: ''
        },
        acceptFileTypes: /(\.|\/)(pdf)$/i
    });

    //上传盲审意见书—专家
    $('#blind-expert-view').fileupload({
        url: 'upload/69',
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

    //上传盲审意见书—学生
    $('#blind-student-view').fileupload({
        url: 'upload/60',
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

    //上传课程设计
    $('#curri-report').fileupload({
        url: 'upload/7',
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

    //上传校外做毕业设计申请表
    $('#extramural-application').fileupload({
        url: 'upload/9',
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
});
