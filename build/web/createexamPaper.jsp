
<%@include file="/view/lecturer/header.jsp" %>
<%@include file="/view/lecturer/rightHead.jsp" %>

<section>
    <button class="buton" onclick="javascript:history.go(-1)">>>> All exam paper</button>
    <div class="textHeading">Create exam paper</div>
    <form action="HeadToAddQuestion" method="get" class="inputPaper">
        
        <button class="deleteButton" type="button" onclick="deleteForm()">X</button>   
        <label>Subject ID</label>
        <select onchange="redictTO(this)">
            <option value="">PRJ301</option>
            <option value="">MAS291</option>
            <option value="">JPD123</option>
            <option value="">IOT102</option>
        </select>

        <p>Exam paper ID</p>
        <label><input type="text" name="examPaperID"></label>

        <label>Exam paper name</label>
        <input type="text" name="examPaperName">

     
        <label>Description</label>
        <input class="descri" type="text" name="des">

        <label></label>
        <input class="saveInput" type="submit" value="Save">  
    </form>    
    
    <form action="deleteQuestion" method="get">
        <input class="addQues" type="submit" value="Add Question">
        
        <table class="deteQues">
            <tr>
                <td>1</td>
                <td>Question ID</td>
                <td>Score Weight</td>
                <td>Content</td>
                <td>
                    <input type="checkbox" value="Answer 1">Answer 1
                    <br>
                    <input type="checkbox" value="Answer 2">Answer 2
                    <br>
                    <input type="checkbox" value="Answer 3">Answer 3
                    <br>
                    <input type="checkbox" value="Answer 4">Answer 4
                </td>
                <td>
                    <input class="dete1" type="submit" value="X">
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>Question ID</td>
                <td>Score Weight</td>
                <td>Content</td>
                <td>
                    <input type="checkbox" value="Answer 1">Answer 1
                    <br>
                    <input type="checkbox" value="Answer 2">Answer 2
                    <br>
                    <input type="checkbox" value="Answer 3">Answer 3
                    <br>
                    <input type="checkbox" value="Answer 4">Answer 4
                </td>
                <td>
                    <input class="dete1" type="submit" value="X">
                </td>
            </tr>
            <tr>
                <td>3</td>
                <td>Question ID</td>
                <td>Score Weight</td>
                <td>Content</td>
                <td>
                    <input type="checkbox" value="Answer 1">Answer 1
                    <br>
                    <input type="checkbox" value="Answer 2">Answer 2
                    <br>
                    <input type="checkbox" value="Answer 3">Answer 3
                    <br>
                    <input type="checkbox" value="Answer 4">Answer 4
                </td>
                <td>
                    <input class="dete1" type="submit" value="X">
                </td>
            </tr>
        </table>
    </form>
</section>

<%@include file="/view/lecturer/footer.jsp" %>

