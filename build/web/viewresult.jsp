<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>

<section>
    <button onclick="javascript:history.go(-1)">>>> Back</button>
    <h1 class="titleHead">Result of PRJ301 Progress test 1</h1>
    <form action="SearchStudentServlet" method="post" class="viewResult">
        <input type="text" placeholder="Search for Student" class="typeInput1">
        <table>
            <tr>
                <th>No</th>
                <th>Class</th>
                <th>Student ID</th>
                <th>Name of student</th>
                <th>Result</th>
                <th>Mark</th>
            </tr>
            
            <tr>
                <td>1</td>
                <td>SE17C03</td>
                <td>DE170244</td>
                <td>ABC</td>
                <td>55/55</td>
                <td>10</td>
            </tr>
            
            <tr>
                <td>2</td>
                <td>SE17C03</td>
                <td>DE170438</td>
                <td>DEF</td>
                <td>50/55</td>
                <td>9.1</td>
            </tr>
            
            <tr>
                <td>1</td>
                <td>SE17C03</td>
                <td>DE170838</td>
                <td>XYZ</td>
                <td>45/55</td>
                <td>8.2</td>
            </tr>
            
            <tr>
                <td>4</td>
                <td>SE17C03</td>
                <td>DE170356</td>
                <td>MNO</td>
                <td>52/55</td>
                <td>9.5</td>
            </tr>
        </table>
    </form>
</section>

<%@include file="/view/lecturer/footer.jsp" %>