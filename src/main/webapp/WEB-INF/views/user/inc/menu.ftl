<div class="sidebar ">
    <div class="sidebar-collapse">
        <div class="sidebar-header t-center">
        </div>
        <div class="sidebar-menu">
            <ul class="nav nav-sidebar">
                <li>
                    <a href="${basePath}/student/main"><i class="fa fa-home"></i><span class="text"> 主页</span></a>
                </li>

                <li>
                    <a href="#"><i class="fa fa-graduation-cap"></i><span class="text"> 毕业设计</span> <span class="fa fa-angle-down pull-right"></span></a>
                    <ul class="nav sub">
                        <#if student.department == '电子工程学院'>
                            <li><a href="http://see.xidian.edu.cn/index.php/Search/index?searchword=%E6%AF%95%E4%B8%9A%E8%AE%BE%E8%AE%A1" target="__black"><i class="fa  fa-map-marker"></i><span class="text"> 毕业设计通知</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/extramural")>
                            <li><a href="${basePath}/student/extramural"><i class="fa fa-sign-out"></i><span class="text"> 申请校外做毕设</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/design")>
                            <li><a href="${basePath}/student/design"><i class="fa fa-cloud-upload"></i><span class="text"> 上传毕设文件</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/blind-trial")>
                            <li><a href="${basePath}/student/blind-trial"><i class="fa fa-upload"></i><span class="text"> 上传盲审论文</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/paper")>
                            <li><a href="${basePath}/student/paper"><i class="fa fa-upload"></i><span class="text"> 上传毕业论文</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/weekly")>
                            <li><a href="${basePath}/student/weekly"><i class="fa fa-file-text-o"></i><span class="text"> 提交周报告</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/arrangement")>
                            <li><a href="${basePath}/student/arrangement"><i class="fa fa-tags"></i><span class="text"> 指导答辩安排</span></a></li>
                        </#if>
                    </ul>
                </li>

                <#--<li>-->
                <#--<a href="#"><i class="fa fa-list-alt"></i><span class="text"> 工程设计</span></a>-->
                <#--</li>-->
                <li>
                    <a href="#"><i class="fa fa-table"></i><span class="text"> 课程设计</span> <span class="fa fa-angle-down pull-right"></span></a>
                    <ul class="nav sub">
                        <!-- <li><a href="${basePath}/student/curri_info"><i class="fa fa-info"></i><span class="text"> 说明</span></a></li> -->
                        <#if student.department == '电子工程学院'>
                            <li><a href="http://see.xidian.edu.cn/index.php/Search/index?searchword=%E8%AF%BE%E7%A8%8B%E8%AE%BE%E8%AE%A1" target="_blank"><i class="fa fa-info"></i><span class="text"> 报告模板通知</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/curri_sel_new")>
                            <li><a href="${basePath}/student/curri_sel_new"><i class="fa fa-list-ol"></i><span class="text"> 选题</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/curri_sbm")>
                            <li><a href="${basePath}/student/curri_sbm"><i class="fa fa-upload"></i><span class="text"> 提交报告</span></a></li>
                        </#if>

                    </ul>
                </li>
                <li>
                    <#if student.permissions?seq_contains("/student/innovation")>
                        <a href="${basePath}/student/innovation"><i class="fa fa-life-bouy"></i><span class="text"> 国创项目</span></a>
                    </#if>
                </li>
                <li>
                    <a href="#"><i class="fa fa-table"></i><span class="text"> 高级科研实训</span> <span class="fa fa-angle-down pull-right"></span></a>
                    <ul class="nav sub">
                        <#if student.permissions?seq_contains("/student/practice/select")>
                            <li><a href="${basePath}/student/practice/select"><i class="fa fa-list-ol"></i><span class="text"> 选题</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/practice/detail")>
                            <li><a href="${basePath}/student/practice/detail"><i class="fa fa-info"></i><span class="text"> 选题详情</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/practice/weekly")>
                            <li><a href="${basePath}/student/practice/weekly"><i class="fa fa-upload"></i><span class="text"> 提交周报告</span></a></li>
                        </#if>

                        <#if student.permissions?seq_contains("/student/practice/report")>
                            <li><a href="${basePath}/student/practice/report"><i class="fa fa-upload"></i><span class="text"> 上传报告</span></a></li>
                        </#if>
                    </ul>
                </li>
                <li>
                    <#if student.permissions?seq_contains("/student/coursework")>
                        <a href="${basePath}/student/coursework"><i class="fa fa-tasks"></i><span class="text"> 课程作业</span></a>
                    </#if>
                </li>
                <#--<li>-->
                <#--<a href="#"><i class="fa fa-briefcase"></i><span class="text"> 站内消息</span></a>-->
                <#--</li>-->
                <#--<li>-->
                <#--<a href="#"><i class="fa fa-life-bouy"></i><span class="text"> 课表查询</span></a>-->
                <#--</li>-->

                <li>
                    <#if student.permissions?seq_contains("/student/appointment_purpose")>
                        <a href="${basePath}/student/appointment_purpose"><i class="fa fa-adjust"></i><span class="text"> 课程意向统计</span></a>
                    </#if>
                </li>

                <li>
                    <#if student.permissions?seq_contains("/student/appointment_result")>
                        <a href="${basePath}/student/appointment_result"><i class="fa fa-plus"></i><span class="text"> 预约课程</span></a>
                    </#if>
                </li>
            </ul>



        </div>
    </div>
    <div class="sidebar-footer">
        <p class="red">问题反馈请加QQ群553408197</p>
        <#include "copyright.ftl">
    </div>
</div>