<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Add Employee</h1>
    <s:form modelAttribute="employee" action="saveProcess">
        <input type="hidden" value="${employee.hobbies}" id="hiddenTxt"/>
        <s:hidden path="id" />

        Employee Name:<s:input path="fullname" /><br/>
        Employee Email: <s:input path="email" /><br/>
        Gender:<s:radiobutton path="gender" value="Male" />Male
        <s:radiobutton path="gender" value="Female" />Female<br/>
        Interests:<s:checkbox path="hobbies" value="Sports" />Sports<br/>
        <s:checkbox path="hobbies" value="Books" />Books<br/>
        <s:checkbox path="hobbies" value="Swimming" />Swimming<br/>
        <s:checkbox path="hobbies" value="Cycling" />Cycling<br/>
        Country:<s:select path="country">
            <s:option value="India">India</s:option>
            <s:option value="Australia">Australia</s:option>
            <s:option value="South Africa">South Africa</s:option>
            <s:option value="Pakistan">Pakistan</s:option>
            <s:option value="America">America</s:option>
        </s:select><br/>
        Address:<s:textarea path="address" /><br/>
        <input type="submit" value="Save Employee">
    </s:form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(() => {
            var hobbies = $("#hiddenTxt").val().split(",");
            var $checkboxes = $("input[type=checkbox]");
            $checkboxes.each((id, element) => {
                if (hobbies.indexOf(element.value) != -1) {
                    element.setAttribute("checked", "checked");
                }
                else {
                    element.removeAttribute("checked");
                }
            });
        });
    </script>
</body>
</html>
