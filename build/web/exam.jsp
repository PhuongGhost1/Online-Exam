<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>

<section>
    <a href="createexam.jsp" class="create">>>>Create Exam</a>
    <form action="action" class="exam">
        <table>
            <tr>
                <th>Subject Id</th>
                <th>Exam</th>
                <th>Time</th>   
                <th>The time it took place</th>
                <th>Status</th>
                <th>Number of questions</th>
            </tr>

            <tr>
                <td>
                    <a href="subject.jsp">PRJ301</a>
                </td>
                <td>Progress test 1</td>
                <td>60 mins</td>
                <td>13:00 pm - 14:00 pm 19-9-2022</td>
                <td>Ready</td>
                <td>30</td>
                <td><a href="viewresult.jsp">View Result</a></td>
            </tr>
            
            <tr>
                <td>
                    <a href="subject.jsp">PRJ301</a>
                </td>
                <td>Progress test 1</td>
                <td>60 mins</td>
                <td>13:00 pm - 14:00 pm 19-9-2022</td>
                <td>Ready</td>
                <td>30</td>
                <td><a href="viewresult.jsp">View Result</a></td>
            </tr>

            <tr>
                <td>
                    <a href="subject.jsp">PRJ301</a>
                </td>
                <td>Progress test 1</td>
                <td>60 mins</td>
                <td>13:00 pm - 14:00 pm 19-9-2022</td>
                <td>Ready</td>
                <td>30</td>
                <td><a href="edit.jsp">Edit</a></td>
            </tr>
        </table>
    </form>    
</section>

<%@include file="/view/lecturer/footer.jsp" %>