<%--@elvariable id="environments" type="java.util.List<org.devnull.zuul.data.model.Environment>"--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create New</title>
</head>
<body>
<div class="row">
    <div class="span12">
        <div class="page-header">
            <h1>Give your file a name..</h1>
        </div>
    </div>
</div>
<div class="row" style="min-height: 200px;">
    <div class="span6">
        <p>
            Provide a file name (without an extension) and we'll get started creating a new settings
            group. In the next step, we'll define the environments and the content of the file.
        </p>

        <form action="#" id="newSettingsForm" method="GET" class="well form-inline">
            <input id="groupName" name="name" type="text" class="input-large" placeholder="File Name.."
                   autocomplete="off">
            <button type="submit" class="btn btn-primary">
                <i class="icon-arrow-right icon-white"></i>
                Next
            </button>
        </form>
    </div>
    <div class="span6">

        <div class="alert alert-info">
            <button class="close" data-dismiss="alert">&times;</button>
            <h3 class="section-header">
                Tip
            </h3>
            <p>Although it is not necessary, you might want to consider using a URL friendly name since
                it will be used as a path to retrieve the file.</p>

            <p><strong>Example: </strong><br/>
                myapp-data-config = /settings/dev/myapp-data-config.properties
            </p>
        </div>
    </div>
</div>
<script>
    $(function () {
        $("#newSettingsForm").submit(function () {
            document.location = "${pageContext.request.contextPath}/settings/" + encodeURI($("#groupName").val());
            return false;
        })
    });
</script>
</body>
</html>