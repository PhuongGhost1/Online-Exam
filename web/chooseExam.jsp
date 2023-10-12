<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>

<section>
    <button onclick="javascript:history.go(-1)">>>> Back</button>
    <label class="labelTy labeltext">Choose Exam Paper</label>
    <label class="labelTy labeltext1">Note: only 1 exam paper</label>
    <label class="labelTy">
        <input type="submit" value="Save" class="saveAdd" id="saveButton">
    </label>
    <form action="SearchExamServlet" method="post" class="viewResult2">
        <input type="text" placeholder="Search for Exam Paper" class="typeInput1">
        <table>
            <tr>
                <th>Subject ID</th>
                <th>Exam Paper ID</th>
                <th>Exam paper name</th>
            </tr>
            
            <tr>
                <td>PRJ301</td>
                <td>FA23.PRJ301.PT1</td>
                <td>Progress test 1 PRJ301 kì Fa23</td>
                <td>
                    <input type="checkbox" value="true">
                </td>
            </tr>
            
            <tr>
                <td>PRJ301</td>
                <td>FA23.PRJ301.PT2</td>
                <td>Progress test 2 PRJ301 kì Fa23</td>
                <td>
                    <input type="checkbox" value="true">
                </td>
            </tr>
            
            <tr>
                <td>MAS291</td>
                <td>FA23.MAS291.AS1</td>
                <td>Assignment 1 MAS291 kì Fa23</td>
                <td>
                    <input type="checkbox" value="true">
                </td>
            </tr>
            
            <tr>
                <td>JPD123</td>
                <td>FA23.JPD123.PT1</td>
                <td>Progress test 1 JPD123 kì Fa23</td>
                <td>
                    <input type="checkbox" value="true">
                </td>
            </tr>
            
            <tr>
                <td>IOT102</td>
                <td>FA23.IOT102.PT1</td>
                <td>Progress test 1 IOT102 kì Fa23</td>
                <td>
                    <input type="checkbox" value="true">
                </td>
            </tr>
            
            <tr>
                <td>MAS291</td>
                <td>FA23.MAS291.PT1</td>
                <td>Progress test 1 MAS291 kì Fa23</td>
                <td>
                    <input type="checkbox" value="true">
                </td>
            </tr>
        </table>
    </form>
</section>

<%@include file="/view/lecturer/footer.jsp" %>