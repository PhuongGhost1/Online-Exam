<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>

<section>
    <button onclick="javascript:history.go(-1)">>>> Back</button>
    <label class="labelTy labeltext">Add students to exam</label>
    <label class="labelTy labeltext1">20 students chosen</label>
    <label class="labelTy">
        <input type="submit" value="Save" class="saveAdd" id="saveButton">
    </label>

    <form action="SearchStudentServlet" class="searchStu">
        <input type="text" placeholder="Search for Student" class="typeInput">
        <table>
            <tr>
                <th>Student ID</th>
                <th>Name</th>
                <th>Class</th>
            </tr>
            
            <tr>
                <td>DE170240</td>
                <td>Tran Van A</td>
                <td>SE17C03</td>
                <td>
                    <input type="checkbox" value="true">
                </td>
            </tr>
            
            <tr>
                <td>DE170788</td>
                <td>Nguyen Van B</td>
                <td>SE17C03</td>
                <td>
                    <input type="checkbox" value="true">
                </td>
            </tr>
            
            <tr>
                <td>DE170112</td>
                <td>Le Thi C</td>
                <td>SE17C03</td>
                <td>
                    <input type="checkbox" value="true">
                </td>
            </tr>
        </table>
    </form>
    
</section>


<%@include file="/view/lecturer/footer.jsp" %>