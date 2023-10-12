<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>

<section>
    <a href="createexamPaper.jsp" class="create">>>>Create Exam Paper</a>
    <form action="action" class="exam">
        <table>
            <tr>
                <th>Subject ID</th>
                <th>Exam Paper ID</th>
                <th>Name</th>   
            </tr>

            <tr>
                <td>PRJ301</td>
                <td>FA23.PRJ301.PT1</td>
                <td>Progress test 1 PRJ301 FA23</td>
                <td><a href="edit.jsp">Edit</a></td>
            </tr>
            
            <tr>
                <td>JPD123</td>
                <td>FA23.JPD123.AS1</td>
                <td>Assignment 1 JPD123 FA23</td>
                <td><a href="edit.jsp">Edit</a></td>
            </tr>

            <tr>
                <td>MAS291</td>
                <td>FA23.MAS291.PT1</td>
                <td>Progress test 1 MAS291 FA23</td>
                <td><a href="edit.jsp">Edit</a></td>
            </tr>
        </table>
    </form>    
</section>

<%@include file="/view/lecturer/footer.jsp" %>