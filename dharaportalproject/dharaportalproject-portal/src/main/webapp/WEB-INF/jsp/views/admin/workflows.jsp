<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ include file="/WEB-INF/jsp/includes/taglibs.jsp" %>
<html>
<head>
    <style type="text/css">

        tr:hover {
            background: #F8DBB0;
        }

        th {
            background-color: #F0AF37;
            font-size: 104%;
            color: #804000;

        }

        .diplay_table {
            display: table;
            margin: auto;
            text-align: center;
        }

        .table_column th {
            display: table-column;
            color: #804000;
            /*font-family: sans-serif;*/
            height: 10px;
            padding: 7px;
        }

        .diplay_table table td {
            border-bottom-color: #000000;
            border-bottom: 1pt solid #000000;
            /*font-family: sans-serif;*/
            font-size: 100%;
            color: #000000;
            padding: 5px;
            text-align: center;
        }

        .diplay_table table th {
            /*font-family: "DejaVu Sans Mono";*/
            padding: 7px;
        }


    </style>

</head>
<body>
<fmt:setBundle basename="messages"/>

<fmt:message key="${pageTitleKey}" var="pagetitle"/>
<rave:navbar pageTitle="${pagetitle}"/>
<div class="container-fluid adminUI" id="preference_detail">
    <div class="span2">
        <div class="tabs-respond">
            <rave:admin_tabsheader/>
        </div>
    </div>
    <div class="row">

        <div class="span10">

            <div class="slate clearfix">
                <div class="diplay_table">
                    <display:table uid="user" name="message" defaultsort="1"
                                   defaultorder="ascending" pagesize="10" requestURI="">

                        <div class="table_column">
                            <display:column property="name" sortable="false" title="Workflow Name"
                                            maxLength="100"/>
                        </div>
                        <div class="table_column">
                            <display:column sortable="false" title="Created by"
                                            maxLength="175"/>
                        </div>
                        <div class="table_column">
                            <display:column sortable="false"
                                            title="Date Created" maxLength="100"/>
                        </div>
                        <div class="table_column">
                            <display:column sortable="false" title="Deployment options"
                                            maxLength="100">
                                <a href="/portal/app/admin/workflow/deploy?workflowId=${user.name}">Deafult</a> <a
                                    href="/portal/app/admin/workflow/customdeploy?workflowId=${user.name}"> Custom</a>
                            </display:column>
                        </div>
                        <display:setProperty name="basic.empty.showtable" value="true"/>
                        <display:setProperty name="paging.banner.group_size" value="10"/>
                        <display:setProperty name="paging.banner.item_name" value="workflow"/>
                        <display:setProperty name="paging.banner.item_names" value="workflows"/>
                        <display:setProperty name="paging.banner.onepage" value=" "/>
                    </display:table>
                </div>

            </div>

        </div>

    </div>
</div>


</body>
</html>
