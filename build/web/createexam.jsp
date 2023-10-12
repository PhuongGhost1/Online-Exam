<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>

<section>
    <button class="buton" onclick="javascript:history.go(-1)">>>> Back</button>
    <div class="textHeading">Exam Setting</div>
    <form action="ExamSettingServlet" method="post" class="inputSubject">
        <table>
            <tr>
                <th>Exam Type</th>
                <td><input type="text" name="examType"></td>
                <th>Exam ID</th>
                <td><input type="text" name="examID"></td>
            </tr>
        </table>

        <label>Time taken</label>
        <div>
            <label>From:</label><input type="text" name="from">
            <label>To:</label><input type="text" name="to">
        </div>

        <p>Date:</p>
        <label><input type="text" name="date"></label>

        <label>Enroll Key:</label>
        <input type="text" name="key">

        <label>Choose exam paper:</label>
        <select onchange="redictTO(this)">
            <option value=""> -- Choose -- </option>
            <option value="examPaper">Exam Paper</option>
        </select>

        <label>Number of questions:</label>
        <input type="text" name="numQuestions">

        <input type="checkbox" name="ans">Shuffle Answers
        <input type="checkbox" name="que">Shuffle Questions

        <label></label>
        <input type="submit" value="Save">
        <div class="notification">Notification area</div>
    </form>    

    <form action="AddStudentServlet" method="post" class="addStuddent">
        <a href="addStudent.jsp">Add Student</a>
        <p>20 students added</p>
        <table>
            <tr>
                <th>DE170788</th><td>Nguyen Van B</td>
            </tr>
            <tr>
                <th>DE170431</th><td>Le Thi C</td>
            </tr>
        </table>
    </form>
</section>

<%@include file="/view/lecturer/footer.jsp" %>
