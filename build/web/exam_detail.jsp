
<section>
    <a href="index.jsp">Back</a>
    <p>Progress test 1</p>
    <p>Started Time: 60 minutes</p>
    <p>Displayed Time: 13:00 pm - 14:00 pm 19-09-2022</p>
    
    <table border="1">
        <tr>
            <th>Subject ID</th>
            <td>PRJ301</td>
        </tr>
        <tr>
            <th>Subject</th>
            <td>Java Web Application Development</td>
        </tr>
        <tr>
            <th>Submission status</th>
            <td>Not yet</td>
        </tr>
        <tr>
            <th>Grading status</th>
            <td>Not yet</td>
        </tr>
        <tr>
            <th>Time remaining</th>
            <td>1 hours 2 minutes 20 seconds</td>
        </tr>
        <tr>
            <th>Number of questions</th>
            <td>30</td>
        </tr>
    </table>
    
    <br>
    
    <form action="do_exam.jsp" method="post">
        <label for="enrollKey">Enroll key:</label>
        <input type="text" id="enrollKey" name="enrollKey" placeholder="Enter Enroll Key" required>
        <input type="submit" value="Submit">
    </form>

    
    <a href="view_result.jsp">View Result</a>
    
</section>    

<%@include file="/view/lecturer/footer.jsp" %>
